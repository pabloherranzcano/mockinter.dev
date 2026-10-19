import { Component, inject } from '@angular/core';
import { RouterLink, RouterLinkActive } from '@angular/router';
import { LanguageService } from '../../core/language.service';
import { LangSwitch } from '../lang-switch/lang-switch';

@Component({
  imports: [LangSwitch, RouterLink, RouterLinkActive],
  selector: 'app-header',
  styleUrl: './header.scss',
  templateUrl: './header.html',
})
export class Header {
  protected readonly t = inject(LanguageService).t;
}
