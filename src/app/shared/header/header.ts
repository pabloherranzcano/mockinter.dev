import { Component, inject } from '@angular/core';
import { Router, RouterLink, RouterLinkActive } from '@angular/router';
import { AuthService } from '../../core/auth.service';
import { LanguageService } from '../../core/language.service';
import { LangSwitch } from '../lang-switch/lang-switch';
import { ThemeSwitch } from '../theme-switch/theme-switch';

@Component({
  imports: [LangSwitch, RouterLink, RouterLinkActive, ThemeSwitch],
  selector: 'app-header',
  styleUrl: './header.scss',
  templateUrl: './header.html',
})
export class Header {
  private readonly auth = inject(AuthService);
  private readonly router = inject(Router);

  protected readonly t = inject(LanguageService).t;
  protected readonly user = this.auth.user;

  protected async signOut() {
    await this.auth.signOut();
    await this.router.navigateByUrl('/');
  }
}
