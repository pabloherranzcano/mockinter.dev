import { Component, computed, inject, signal } from '@angular/core';
import { RouterLink } from '@angular/router';
import { AuthService } from '../../core/auth.service';
import { LanguageService } from '../../core/language.service';
import { ProgressService } from '../../core/progress.service';
import { QuestionsService } from '../../core/questions/questions.service';
import { Group, GROUPS, groupOf } from '../../core/tech-groups';
import { techsToParam } from '../../core/techs';
import { Spinner } from '../../shared/spinner/spinner';

interface TechChip {
  name: string;
  count: number;
}

@Component({
  imports: [RouterLink, Spinner],
  selector: 'app-home',
  styleUrl: './home.scss',
  templateUrl: './home.html',
})
export class Home {
  protected readonly t = inject(LanguageService).t;
  protected readonly questionsService = inject(QuestionsService);
  protected readonly user = inject(AuthService).user;
  protected readonly streak = inject(ProgressService).streak;

  /** Tecnologías marcadas. Si no hay ninguna, se practican todas. */
  protected readonly selected = signal<string[]>([]);

  protected readonly total = computed(() => this.questionsService.questions().length);

  /** Las tecnologías que existen en las preguntas, con cuántas hay de cada una. */
  private readonly techs = computed<TechChip[]>(() => {
    const counts = new Map<string, number>();
    for (const question of this.questionsService.questions()) {
      counts.set(question.tech, (counts.get(question.tech) ?? 0) + 1);
    }
    return [...counts]
      .map(([name, count]) => ({ name, count }))
      .sort((a, b) => a.name.localeCompare(b.name));
  });

  /** Las tecnologías repartidas por grupos. Los grupos vacíos no se muestran. */
  protected readonly groups = computed(() =>
    GROUPS.map((id) => ({
      id,
      techs: this.techs().filter((tech) => groupOf(tech.name) === id),
    })).filter((group) => group.techs.length > 0),
  );

  /** Cuántas preguntas se van a practicar con la selección actual. */
  protected readonly selectedCount = computed(() => {
    if (this.selected().length === 0) {
      return this.total();
    }
    return this.techs()
      .filter((tech) => this.selected().includes(tech.name))
      .reduce((sum, tech) => sum + tech.count, 0);
  });

  /** El valor para la URL: /lesson/angular,rxjs (o /lesson/all). */
  protected readonly lessonParam = computed(() => techsToParam(this.selected()));

  protected isSelected(name: string): boolean {
    return this.selected().includes(name);
  }

  protected clear(): void {
    this.selected.set([]);
  }

  /** Marca la chip si estaba apagada, y la apaga si estaba marcada. */
  protected toggle(name: string): void {
    this.selected.update((list) =>
      list.includes(name) ? list.filter((tech) => tech !== name) : [...list, name],
    );
  }

  protected isGroupSelected(group: { techs: TechChip[] }): boolean {
    return group.techs.every((tech) => this.isSelected(tech.name));
  }

  /** Marca todo el grupo; si ya estaba entero marcado, lo quita. */
  protected toggleGroup(group: { id: Group; techs: TechChip[] }): void {
    const names = group.techs.map((tech) => tech.name);
    if (this.isGroupSelected(group)) {
      this.selected.update((list) => list.filter((tech) => !names.includes(tech)));
    } else {
      this.selected.update((list) => [...new Set([...list, ...names])]);
    }
  }
}
