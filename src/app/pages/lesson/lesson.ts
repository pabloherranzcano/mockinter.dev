import { Component, computed, effect, inject, input, signal, untracked } from '@angular/core';
import { RouterLink } from '@angular/router';
import { LanguageService } from '../../core/language.service';
import { LessonStore } from '../../core/lesson/lesson.store';
import { Question } from '../../core/models/question';
import { ProgressService } from '../../core/progress.service';
import { QuestionsService } from '../../core/questions/questions.service';
import { paramToTechs, WRONG_PARAM } from '../../core/techs';
import { RichText } from '../../shared/rich-text/rich-text';
import { Spinner } from '../../shared/spinner/spinner';

@Component({
  imports: [RouterLink, RichText, Spinner],
  providers: [LessonStore],
  selector: 'app-lesson',
  styleUrl: './lesson.scss',
  templateUrl: './lesson.html',
})
export class Lesson {
  // Viene de la URL (/lesson/:tech): 'all' (todas), varias separadas por comas ('angular,rxjs')
  // o 'wrong' (las preguntas falladas).
  tech = input.required<string>();

  protected readonly t = inject(LanguageService).t;
  protected readonly store = inject(LessonStore);
  protected readonly questionsService = inject(QuestionsService);

  protected readonly progressService = inject(ProgressService);

  private readonly techs = computed(() => paramToTechs(this.tech()));

  protected readonly isWrongMode = computed(() => this.tech() === WRONG_PARAM);

  /** En el modo fallos, hay que esperar a que lleguen los intentos antes de decidir nada. */
  protected readonly waitingForAttempts = computed(
    () => this.isWrongMode() && !this.progressService.loaded(),
  );

  /** Las preguntas que corresponden ahora mismo a la URL (cambian si cambian los intentos). */
  private readonly candidates = computed(() => {
    const questions = this.questionsService.questions();
    if (this.isWrongMode()) {
      const wrongIds = this.progressService.wrongIds();
      return questions.filter((question) => wrongIds.includes(question.id));
    }
    return questions.filter(
      (question) => this.techs().length === 0 || this.techs().includes(question.tech),
    );
  });

  /**
   * Las preguntas de ESTA lección. Es una copia fija: al contestar, `wrongIds` cambia y, si la
   * lección la leyera en vivo, se reiniciaría sola (o se vaciaría al acertar la última).
   */
  protected readonly lessonQuestions = signal<Question[]>([]);

  /** El valor de la URL con el que ya empezó la lección de fallos. */
  private wrongStartedFor: string | null = null;

  constructor() {
    effect(() => {
      const questions = this.candidates();
      const tech = this.tech();
      untracked(() => {
        if (this.isWrongMode() && this.wrongStartedFor === tech) {
          return;
        }
        this.lessonQuestions.set(questions);
        if (questions.length > 0) {
          this.wrongStartedFor = this.isWrongMode() ? tech : null;
          this.store.start(questions);
        }
      });
    });
  }
}
