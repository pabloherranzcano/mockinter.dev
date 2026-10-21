import { Component, computed, inject, signal } from '@angular/core';
import { RouterLink } from '@angular/router';
import { LanguageService } from '../../core/language.service';
import { QuestionsService } from '../../core/questions/questions.service';

@Component({
  imports: [RouterLink],
  selector: 'app-home',
  styleUrl: './home.scss',
  templateUrl: './home.html',
})
export class Home {
  protected readonly t = inject(LanguageService).t;
  protected readonly questionsService = inject(QuestionsService);

  /** Tecnología elegida. 'all' son todas, y es lo que se practica si no se toca nada. */
  protected readonly selected = signal('all');

  protected readonly total = computed(() => this.questionsService.questions().length);

  /** Las tecnologías que existen en las preguntas, con cuántas hay de cada una. */
  protected readonly techs = computed(() => {
    const counts = new Map<string, number>();
    for (const question of this.questionsService.questions()) {
      counts.set(question.tech, (counts.get(question.tech) ?? 0) + 1);
    }
    return [...counts]
      .map(([name, count]) => ({ name, count }))
      .sort((a, b) => a.name.localeCompare(b.name));
  });
}
