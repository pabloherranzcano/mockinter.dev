import { Lang } from '../language.service';

export interface Question {
  id: string;
  tech: string;
  topic: string;
  difficulty: Difficulty;
  correctIndex: number;
  text: Record<Lang, QuestionText>;
}

export interface QuestionText {
  prompt: string;
  options: string[];
  explanation: string;
}

export type Difficulty = 'easy' | 'medium' | 'hard';
export type QuestionType = 'test' | 'fill' | 'order';

