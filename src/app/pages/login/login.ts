import { Component, inject, signal } from '@angular/core';
import { email, form, FormField, minLength, required, submit } from '@angular/forms/signals';
import { Router } from '@angular/router';
import { AuthService } from '../../core/auth.service';
import { LanguageService } from '../../core/language.service';

@Component({
  imports: [FormField],
  selector: 'app-login',
  styleUrl: './login.scss',
  templateUrl: './login.html',
})
export class Login {
  private readonly auth = inject(AuthService);
  private readonly router = inject(Router);
  protected readonly t = inject(LanguageService).t;

  model = signal({
    email: '',
    password: '',
  });

  loginForm = form(this.model, (path) => {
    required(path.email);
    email(path.email);
    required(path.password);
    minLength(path.password, 6);
  });

  /** Entrar o crear cuenta: la misma pantalla con dos modos. */
  protected readonly mode = signal<'signIn' | 'signUp'>('signIn');
  protected readonly error = signal<string | null>(null);
  protected readonly info = signal<string | null>(null);

  protected toggleMode() {
    this.mode.update((mode) => (mode === 'signIn' ? 'signUp' : 'signIn'));
    this.error.set(null);
    this.info.set(null);
  }

  protected onSubmit(event: Event) {
    event.preventDefault();

    // submit() ejecuta la acción solo si el formulario es válido; si no, marca los campos como tocados
    return submit(this.loginForm, async () => {
      this.error.set(null);
      this.info.set(null);
      const value = this.model();

      if (this.mode() === 'signIn') {
        const error = await this.auth.signIn(value.email, value.password);
        if (error) {
          // Mensaje genérico: no decimos si falló el email o la contraseña
          this.error.set(this.t().login.invalidCredentials);
          return;
        }
        await this.router.navigateByUrl('/');
        return;
      }

      const { error, needsConfirmation } = await this.auth.signUp(value.email, value.password);
      if (error) {
        this.error.set(this.t().login.signUpFailed);
        return;
      }
      if (needsConfirmation) {
        this.info.set(this.t().login.checkEmail);
        return;
      }
      await this.router.navigateByUrl('/');
    });
  }
}
