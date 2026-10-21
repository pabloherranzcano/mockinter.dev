import { es } from './es';

export const en: typeof es = {
  nav: {
    home: 'Home',
    practice: 'Practice',
    login: 'Log in',
    logout: 'Log out',
  },
  common: {
    onlyInEnglish: 'Only in English',
    onlyInSpanish: 'Only in Spanish',
    changeLanguage: 'Change language',
    changeTheme: 'Switch theme',
  },
  notFound: {
    title: 'Web not found',
  },
  home: {
    title: 'Practice technical interviews',
    subtitle: 'Short frontend questions with explanations. No sign-up, in 5 minutes.',
    pick: 'What do you want to practice?',
    all: 'All',
    start: 'Start',
  },
  login: {
    signInTitle: 'Log in',
    signUpTitle: 'Create account',
    email: 'Email',
    password: 'Password',
    signIn: 'Log in',
    signUp: 'Create account',
    toSignUp: "Don't have an account? Create one",
    toSignIn: 'Already have an account? Log in',
    emailInvalid: 'Enter a valid email',
    passwordShort: 'At least 6 characters',
    invalidCredentials: 'Incorrect email or password',
    signUpFailed: 'The account could not be created. Check your details and try again.',
    checkEmail: 'Check your email to confirm your account.',
  },
  lesson: {
    check: 'Check',
    next: 'Continue',
    correct: 'Correct!',
    wrong: 'Not quite',
    finished: 'Lesson complete!',
    score: 'Correct answers',
    backHome: 'Back to home',
    loading: 'Preparing your lesson…',
    error: 'The lesson could not be loaded. Check your connection and try again.',
    retry: 'Try again',
    empty: 'There are no questions available yet.',
  },
};
