import { computed, inject, Injectable, signal } from '@angular/core';
import { Session } from '@supabase/supabase-js';
import { SupabaseService } from './supabase.service';

@Injectable({ providedIn: 'root' })
export class AuthService {
  readonly session = signal<Session | null>(null);
  readonly user = computed(() => this.session()?.user ?? null);
  private readonly _supabase = inject(SupabaseService);

  constructor() {
    this._supabase.client.auth.onAuthStateChange((evento, session) => {
      this.session.set(session);
    });
  }

  async signUp(email: string, password: string) {
    const { data, error } = await this._supabase.client.auth.signUp({ email, password });
    // Con la confirmación de email activada, el usuario se crea pero no hay sesión hasta que confirme
    return { error, needsConfirmation: !error && !data.session };
  }

  async signIn(email: string, password: string) {
    const { error } = await this._supabase.client.auth.signInWithPassword({ email, password });
    return error;
  }

  async signOut() {
    const { error } = await this._supabase.client.auth.signOut();
    return error;
  }
}
