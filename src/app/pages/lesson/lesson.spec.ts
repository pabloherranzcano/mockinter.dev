import { signal } from '@angular/core';
import { TestBed } from '@angular/core/testing';
import { provideRouter } from '@angular/router';
import { LanguageService } from '../../core/language.service';
import { Question } from '../../core/models/question';
import { ProgressService } from '../../core/progress.service';
import { QuestionsService } from '../../core/questions/questions.service';
import { Lesson } from './lesson';

const question = (id: string, tech: string): Question =>
  ({
    id,
    tech,
    topic: 't',
    difficulty: 'easy',
    correctIndex: 0,
    text: {
      es: { prompt: id, options: ['a', 'b', 'c', 'd'], explanation: 'e' },
      en: { prompt: id, options: ['a', 'b', 'c', 'd'], explanation: 'e' },
    },
  }) as unknown as Question;

describe('Lesson', () => {
  const wrongIds = signal<string[]>([]);
  const loaded = signal(true);

  function create(tech: string) {
    TestBed.configureTestingModule({
      providers: [
        provideRouter([]),
        {
          provide: QuestionsService,
          useValue: {
            rows: { isLoading: () => false, error: () => undefined },
            questions: () => [question('a1', 'angular'), question('r1', 'rxjs'), question('a2', 'angular')],
          },
        },
        { provide: ProgressService, useValue: { wrongIds, loaded, record: async () => null } },
        { provide: LanguageService, useValue: { t: signal({ lesson: {} }), lang: signal('es') } },
      ],
    });
    const fixture = TestBed.createComponent(Lesson);
    fixture.componentRef.setInput('tech', tech);
    fixture.detectChanges();
    return fixture;
  }

  beforeEach(() => {
    wrongIds.set([]);
    loaded.set(true);
  });

  it('con varias tecnologías separadas por comas solo trae esas preguntas', () => {
    const fixture = create('rxjs');
    expect((fixture.componentInstance as any).lessonQuestions().map((q: Question) => q.id)).toEqual(['r1']);
  });

  it('en el modo fallos trae solo las falladas', () => {
    wrongIds.set(['a2']);
    const fixture = create('wrong');
    expect((fixture.componentInstance as any).lessonQuestions().map((q: Question) => q.id)).toEqual(['a2']);
  });

  it('en el modo fallos la lista no cambia al cambiar los intentos', () => {
    wrongIds.set(['a1', 'a2']);
    const fixture = create('wrong');
    wrongIds.set(['a2']);
    fixture.detectChanges();
    expect((fixture.componentInstance as any).lessonQuestions().length).toBe(2);
  });
});
