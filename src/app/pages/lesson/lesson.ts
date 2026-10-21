import { Component, computed, effect, inject, input, untracked } from '@angular/core';
import { RouterLink } from '@angular/router';
import { LanguageService } from '../../core/language.service';
import { LessonStore } from '../../core/lesson/lesson.store';
import { QuestionsService } from '../../core/questions/questions.service';

@Component({
  imports: [RouterLink],
  providers: [LessonStore],
  selector: 'app-lesson',
  styleUrl: './lesson.scss',
  templateUrl: './lesson.html',
})
export class Lesson {
  // Viene de la URL (/lesson/:tech). 'all' significa todas las tecnologías.
  tech = input.required<string>();

  protected readonly t = inject(LanguageService).t;
  protected readonly store = inject(LessonStore);
  protected readonly questionsService = inject(QuestionsService);

  protected readonly lessonQuestions = computed(() =>
    this.questionsService
      .questions()
      .filter((question) => this.tech() === 'all' || question.tech === this.tech()),
  );

  constructor() {
    effect(() => {
      const questions = this.lessonQuestions();
      if (questions.length > 0) {
        untracked(() => this.store.start(questions));
      }
    });
  }
}
