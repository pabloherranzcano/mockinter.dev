import { Component, inject } from '@angular/core';
import { Lang, LanguageService } from '../../core/language.service';

@Component({
  selector: 'app-lang-switch',
  templateUrl: './lang-switch.html',
  styleUrl: './lang-switch.scss',
})
export class LangSwitch {
  private readonly languageService = inject(LanguageService);

  protected readonly lang = this.languageService.lang;
  protected readonly t = this.languageService.t;
  protected readonly options: Lang[] = ['es', 'en'];

  protected setLang(lang: Lang) {
    this.languageService.setLang(lang);
  }
}
