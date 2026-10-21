import { effect, Injectable, signal } from '@angular/core';

export type Theme = 'light' | 'dark';

@Injectable({ providedIn: 'root' })
export class ThemeService {
  readonly theme = signal<Theme>(this.loadThemeFromLocalStorage());

  setTheme(theme: Theme) {
    this.theme.set(theme); // pone exactamente lo que le pides
  }

  toggle() {
    this.theme.set(this.theme() === 'dark' ? 'light' : 'dark');
  }

  constructor() {
    effect(() => {
      document.documentElement.setAttribute('data-theme', this.theme());
      localStorage.setItem('theme', this.theme());
    });
  }

  private loadThemeFromLocalStorage(): Theme {
    const theme = localStorage.getItem('theme');

    if (theme === 'light' || theme === 'dark') {
      return theme;
    }
    return window.matchMedia('(prefers-color-scheme: light)').matches ? 'light' : 'dark';
  }
}
