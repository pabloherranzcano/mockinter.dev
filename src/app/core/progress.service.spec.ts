import { TestBed } from '@angular/core/testing';
import { AuthService } from './auth.service';
import { Attempt, ProgressService } from './progress.service';
import { SupabaseService } from './supabase.service';

// Los intentos van del más reciente al más antiguo, igual que los devuelve Supabase
const attempt = (question_id: string, result: Attempt['result']): Attempt => ({
  question_id,
  result,
  created_at: '2026-10-22T10:00:00.000Z',
});

describe('ProgressService.wrongIds', () => {
  let service: ProgressService;

  beforeEach(() => {
    // Sin Supabase ni sesión: solo se prueba el cálculo, rellenando `attempts` a mano
    TestBed.configureTestingModule({
      providers: [
        { provide: SupabaseService, useValue: {} },
        { provide: AuthService, useValue: { user: () => null } },
      ],
    });
    service = TestBed.inject(ProgressService);
  });

  it('incluye una pregunta cuyo último intento fue wrong', () => {
    service.attempts.set([attempt('A', 'wrong')]);

    expect(service.wrongIds()).toEqual(['A']);
  });

  it('no incluye una pregunta que falló y después se acertó', () => {
    service.attempts.set([attempt('A', 'correct'), attempt('A', 'wrong')]);

    expect(service.wrongIds()).toEqual([]);
  });

  it('no repite una pregunta fallada varias veces', () => {
    service.attempts.set([attempt('A', 'wrong'), attempt('A', 'wrong'), attempt('A', 'wrong')]);

    expect(service.wrongIds()).toEqual(['A']);
  });

  it('el ejemplo mixto: A wrong, B correct, A correct → solo A', () => {
    service.attempts.set([attempt('A', 'wrong'), attempt('B', 'correct'), attempt('A', 'correct')]);

    expect(service.wrongIds()).toEqual(['A']);
  });
});
