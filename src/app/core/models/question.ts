import { Lang } from '../language.service';

export interface Question {
  id: string;
  tech: string;
  topic: string;
  difficulty: 'easy' | 'medium' | 'hard';
  correctIndex: number;
  text: Record<Lang, QuestionText>;
}

export interface QuestionText {
  prompt: string;
  options: string[];
  explanation: string;
}
