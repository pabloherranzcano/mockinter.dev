import { computed, effect, inject, Injectable, signal, untracked } from '@angular/core';
import { AuthService } from './auth.service';
import { SupabaseService } from './supabase.service';

export interface Attempt {
  question_id: string;
  result: 'correct' | 'wrong';
  /** Fecha ISO, por ejemplo 2026-10-22T09:30:00.000Z */
  created_at: string;
}

/** Guarda lo que el usuario responde y calcula su progreso. Los invitados no guardan nada. */
@Injectable({ providedIn: 'root' })
export class ProgressService {
  private readonly supabase = inject(SupabaseService);
  private readonly auth = inject(AuthService);

  /** Mis intentos, del más reciente al más antiguo. Vacío si no hay sesión. */
  readonly attempts = signal<Attempt[]>([]);

  // Solo el id: si Supabase renueva el token, el usuario "cambia" de objeto pero no de id
  private readonly userId = computed(() => this.auth.user()?.id ?? null);

  /** Días seguidos practicando. */
  readonly streak = computed(() => {
    const days = new Set(this.attempts().map((a) => toDay(a.created_at)));
    const day = new Date();
    if (!days.has(toDay(day.toISOString()))) {
      day.setDate(day.getDate() - 1);
    }
    let count = 0;
    while (days.has(toDay(day.toISOString()))) {
      count++;
      /* retrocede un día */
      day.setDate(day.getDate() - 1);
    }
    return count;
  });

  /**
   * Los ids de las preguntas que tengo falladas: aquellas cuyo ÚLTIMO intento fue 'wrong'.
   * Si fallas una pregunta y luego la aciertas, deja de estar en fallos.
   */
  readonly wrongIds = computed<string[]>(() => {
    const seen = new Set<string>();
    const wrong: string[] = []; // los que quedan en fallos
    for (const attempt of this.attempts()) {
      if (!seen.has(attempt.question_id)) {
        seen.add(attempt.question_id);
        if (attempt.result === 'wrong') {
          wrong.push(attempt.question_id);
        }
      }
    }
    return wrong;
  });

  constructor() {
    effect(() => {
      this.userId();
      untracked(() => void this.load());
    });
  }

  /** Lee mis intentos de Supabase. */
  async load() {
    if (!this.auth.user()) {
      this.attempts.set([]);
      return;
    }

    const { data, error } = await this.supabase.client
      .from('attempts')
      .select('question_id, result, created_at')
      .order('created_at', { ascending: false })
      .limit(1000);

    if (!error) {
      this.attempts.set(data as Attempt[]);
    }
  }

  /** Apunta una respuesta en la tabla attempts. Devuelve el error, o null si fue bien. */
  async record(questionId: string, correct: boolean) {
    if (!this.auth.user()) {
      return null;
    }

    const result = correct ? 'correct' : 'wrong';
    const { error } = await this.supabase.client
      .from('attempts')
      .insert({ question_id: questionId, result });

    if (!error) {
      // Se añade en local, para no tener que volver a pedirlo todo a Supabase
      this.attempts.update((list) => [
        { question_id: questionId, result, created_at: new Date().toISOString() },
        ...list,
      ]);
    }
    return error;
  }
}

/** Pasa una fecha ISO al día en la zona horaria del usuario, con la forma 2026-10-22. */
export function toDay(iso: string): string {
  return new Date(iso).toLocaleDateString('en-CA');
}
