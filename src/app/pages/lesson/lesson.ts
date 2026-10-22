import { Component, computed, effect, inject, input, untracked } from '@angular/core';
import { RouterLink } from '@angular/router';
import { LanguageService } from '../../core/language.service';
import { LessonStore } from '../../core/lesson/lesson.store';
import { QuestionsService } from '../../core/questions/questions.service';
import { paramToTechs } from '../../core/techs';
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
  // Viene de la URL (/lesson/:tech): 'all' (todas) o varias separadas por comas, como 'angular,rxjs'.
  tech = input.required<string>();

  protected readonly t = inject(LanguageService).t;
  protected readonly store = inject(LessonStore);
  protected readonly questionsService = inject(QuestionsService);

  private readonly techs = computed(() => paramToTechs(this.tech()));

  protected readonly lessonQuestions = computed(() =>
    this.questionsService
      .questions()
      .filter((question) => this.techs().length === 0 || this.techs().includes(question.tech)),
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
