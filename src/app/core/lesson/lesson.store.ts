import { computed, inject, Injectable, signal } from '@angular/core';
import { LanguageService } from '../language.service';
import { Question } from '../models/question';
import { ProgressService } from '../progress.service';

export interface OptionView {
  text: string;
  /** Posición original en `options`, antes de barajar. Se compara con `correctIndex`. */
  index: number;
}

export type OptionState = 'selected' | 'correct' | 'wrong' | '';

/** Estado de una lección. Se registra en `providers` del componente: una copia nueva por lección. */
@Injectable()
export class LessonStore {
  private readonly lang = inject(LanguageService).lang;
  private readonly progressService = inject(ProgressService);

  private readonly queue = signal<Question[]>([]);
  readonly total = signal(0);

  /** Posición de la opción elegida, tal y como se muestra (ya barajada). */
  readonly selected = signal<number | null>(null);
  readonly checked = signal(false);
  readonly correctCount = signal(0);

  readonly current = computed(() => this.queue()[0] ?? null);
  /** El número de la pregunta que se está viendo: la 1ª, la 2ª... (de `total`). */
  readonly position = computed(() => this.total() - this.queue().length + 1);
  readonly finished = computed(() => this.total() > 0 && this.queue().length === 0);
  readonly progress = computed(() =>
    this.total() ? Math.round((100 * (this.total() - this.queue().length)) / this.total()) : 0,
  );

  // Solo depende de la pregunta actual: cambiar de idioma no vuelve a barajar.
  private readonly order = computed(() => {
    const q = this.current();
    return q ? shuffle(q.text.es.options.map((_, i) => i)) : [];
  });

  readonly optionViews = computed(() =>
    this.options().map((option, i) => {
      let state: OptionState = '';
      if (this.checked() && option.index === this.current()?.correctIndex) {
        state = 'correct';
      } else if (this.checked() && this.selected() === i) {
        state = 'wrong';
      } else if (!this.checked() && this.selected() === i) {
        state = 'selected';
      }

      return { text: option.text, index: option.index, state };
    }),
  );

  readonly options = computed<OptionView[]>(() => {
    const q = this.current();
    if (!q) {
      return [];
    }
    const texts = q.text[this.lang()].options;
    return this.order().map((i) => ({ text: texts[i], index: i }));
  });

  readonly prompt = computed(() => this.current()?.text[this.lang()].prompt ?? '');
  readonly explanation = computed(() => this.current()?.text[this.lang()].explanation ?? '');

  readonly canCheck = computed(() => this.selected() !== null && !this.checked());
  readonly isCorrect = computed(() => {
    const q = this.current();
    const s = this.selected();
    return q !== null && s !== null && this.options()[s].index === q.correctIndex;
  });

  /** Empieza una sesión: baraja las preguntas y se queda con `limit` (por defecto, todas). */
  start(questions: Question[], limit = questions.length) {
    const picked = shuffle(questions).slice(0, limit);
    this.queue.set(picked);
    this.total.set(picked.length);
    this.correctCount.set(0);
    this.resetQuestion();
  }

  select(position: number) {
    if (!this.checked()) {
      this.selected.set(position);
    }
  }

  check() {
    const question = this.current();
    if (!this.canCheck() || !question) {
      return;
    }
    this.checked.set(true);
    const correct = this.isCorrect();
    if (correct) {
      this.correctCount.update((n) => n + 1);
    }
    // Sin await: guardar el intento no debe retrasar la pantalla. Un invitado no guarda nada.
    void this.progressService.record(question.id, correct);
  }

  next() {
    if (!this.checked()) {
      return;
    }
    this.queue.update((q) => q.slice(1));
    this.resetQuestion();
  }

  private resetQuestion() {
    this.selected.set(null);
    this.checked.set(false);
  }
}

/** Fisher-Yates: devuelve una copia barajada, sin tocar el original. */
function shuffle<T>(items: T[]): T[] {
  const copy = [...items];
  for (let i = copy.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [copy[i], copy[j]] = [copy[j], copy[i]];
  }
  return copy;
}
