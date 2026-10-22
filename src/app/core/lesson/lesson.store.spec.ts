import { signal } from '@angular/core';
import { TestBed } from '@angular/core/testing';
import { LanguageService } from '../language.service';
import { Question } from '../models/question';
import { ProgressService } from '../progress.service';
import { LessonStore } from './lesson.store';

const question = (id: string): Question =>
  ({
    id,
    tech: 'angular',
    topic: 't',
    difficulty: 'easy',
    correctIndex: 0,
    text: {
      es: { prompt: id, options: ['a', 'b', 'c', 'd'], explanation: 'e' },
      en: { prompt: id, options: ['a', 'b', 'c', 'd'], explanation: 'e' },
    },
  }) as unknown as Question;

describe('LessonStore.start', () => {
  let store: LessonStore;
  const questions = ['1', '2', '3', '4', '5'].map(question);

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [
        LessonStore,
        { provide: LanguageService, useValue: { lang: signal('es') } },
        { provide: ProgressService, useValue: { record: async () => null } },
      ],
    });
    store = TestBed.inject(LessonStore);
  });

  it('sin límite, la sesión tiene todas las preguntas', () => {
    store.start(questions);

    expect(store.total()).toBe(5);
  });

  it('con límite, la sesión tiene solo ese número', () => {
    store.start(questions, 2);

    expect(store.total()).toBe(2);
    expect(store.position()).toBe(1);
  });

  it('si el límite es mayor que las preguntas, usa las que hay', () => {
    store.start(questions, 50);

    expect(store.total()).toBe(5);
  });
});
