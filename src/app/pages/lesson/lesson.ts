import { Component, computed, inject, input } from '@angular/core';
import { RouterLink } from '@angular/router';
import { LanguageService } from '../../core/language.service';
import { LessonStore } from '../../core/lesson/lesson.store';
import { QUESTIONS_MOCK } from '../../core/models/questions.mock';

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

  constructor() {
    this.store.start(QUESTIONS_MOCK);
  }
}
