import { computed, effect, Injectable, signal } from '@angular/core';
import { en } from './i18n/en';
import { es } from './i18n/es';

export type Lang = 'es' | 'en';

@Injectable({ providedIn: 'root' })
export class LanguageService {
  readonly lang = signal<Lang>(this.loadLangFromLocalStorage());
  readonly t = computed(() => (this.lang() === 'es' ? es : en));

  setLang(lang: Lang) {
    this.lang.set(lang);
  }

  constructor() {
    effect(() => {
      localStorage.setItem('lang', this.lang());
    });
  }

  private loadLangFromLocalStorage(): Lang {
    const lang = localStorage.getItem('lang');
    if (lang === 'es' || lang === 'en') {
      return lang;
    }
    return navigator.language.startsWith('es') ? 'es' : 'en';
  }
}
