import { Injectable } from '@angular/core';
import { createClient } from '@supabase/supabase-js';
import { environment } from '../../environments/environment';

/** Un único cliente de Supabase para toda la app. Guarda y renueva la sesión por su cuenta. */
@Injectable({ providedIn: 'root' })
export class SupabaseService {
  readonly client = createClient(environment.supabaseUrl, environment.supabaseKey);
}
