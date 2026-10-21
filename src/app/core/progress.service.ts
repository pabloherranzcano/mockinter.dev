import { inject, Injectable } from '@angular/core';
import { AuthService } from './auth.service';
import { SupabaseService } from './supabase.service';

/** Guarda lo que el usuario responde. Los invitados (sin sesión) no guardan nada. */
@Injectable({ providedIn: 'root' })
export class ProgressService {
  private readonly supabase = inject(SupabaseService);
  private readonly auth = inject(AuthService);

  /** Apunta una respuesta en la tabla attempts. Devuelve el error, o null si fue bien. */
  async record(questionId: string, correct: boolean) {
    if (!this.auth.user()) {
      return null;
    }

    const { error } = await this.supabase.client.from('attempts').insert({
      question_id: questionId,
      result: correct ? 'correct' : 'wrong',
    });
    return error;
  }
}
