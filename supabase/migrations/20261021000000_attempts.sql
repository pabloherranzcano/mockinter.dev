-- mockinter.dev (Angular): intentos de los usuarios.
-- Cada fila es una respuesta: qué pregunta y si acertó. El progreso, la racha y el repaso
-- de fallos se calculan a partir de aquí.
-- Seguridad: cada usuario solo puede crear y ver SUS intentos. Nadie puede editarlos ni borrarlos.

create table public.attempts (
  id           bigint generated always as identity primary key,
  -- Se rellena solo con el usuario de la sesión: el cliente no manda su user_id
  user_id      uuid not null default auth.uid() references auth.users (id) on delete cascade,
  question_id  text not null references public.questions (id) on update cascade on delete cascade,
  result       text not null check (result in ('correct', 'wrong')),
  created_at   timestamptz not null default now()
);

create index on public.attempts (user_id, created_at desc);
create index on public.attempts (user_id, question_id, created_at desc);

alter table public.attempts enable row level security;

-- (select auth.uid()) en vez de auth.uid(): Postgres lo calcula una vez por consulta, no por fila
create policy "ver mis intentos" on public.attempts
  for select using (user_id = (select auth.uid()));

create policy "crear mis intentos" on public.attempts
  for insert with check (user_id = (select auth.uid()));

-- Sin políticas de update ni delete: los intentos no se pueden modificar desde la API.
