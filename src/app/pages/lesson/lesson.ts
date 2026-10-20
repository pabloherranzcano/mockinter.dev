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
  topicId = input.required<string>();

  protected readonly t = inject(LanguageService).t;
  protected readonly store = inject(LessonStore);
  protected readonly questionsService = inject(QuestionsService);

  constructor() {
    effect(() => {
      const questions = this.questionsService.questions();
      if (questions.length > 0) {
        untracked(() => this.store.start(questions));
      }
    });
  }
}
