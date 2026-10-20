import { computed, Injectable } from '@angular/core';
import { environment } from '../../../environments/environment';
import { Lang } from '../language.service';
import { httpResource } from '@angular/common/http';
import { Difficulty, Question, QuestionText, QuestionType } from '../models/question';

interface TranslationRow {
  lang: Lang;
  prompt: string;
  options: string[];
  explanation: string;
}

interface QuestionRow {
  id: string;
  tech: string;
  topic: string;
  difficulty: Difficulty;
  type: QuestionType;
  correct_index: number | null;
  question_translations: TranslationRow[];
}

@Injectable({ providedIn: 'root' })
export class QuestionsService {

  readonly rows = httpResource<QuestionRow[]>(() => ({
    url: `${environment.supabaseUrl}/rest/v1/questions?select=*,question_translations(*)&status=eq.published`,
    headers: { apikey: environment.supabaseKey },
  }));

  // value() lanza un error si la petición falló, así que se lee solo si hay valor.
  readonly questions = computed(() => (this.rows.hasValue() ? this.rows.value() : [])
    .filter((row: QuestionRow) => row.type !== 'order')
    .map((row: QuestionRow) => this.toQuestion(row)));

  public toQuestion(row: QuestionRow): Question {
    const text = {} as Record<Lang, QuestionText>;
    for (const t of row.question_translations) {
      text[t.lang] = { prompt: t.prompt, options: t.options, explanation: t.explanation };
    }

    return {
      id: row.id,
      tech: row.tech,
      topic: row.topic,
      difficulty: row.difficulty,
      correctIndex: row.correct_index!, //nunca será null a no ser que sea una pregunta de tipo 'order'
      text,
    };
  }
}
