-- mockinter.dev (Angular): esquema inicial del banco de preguntas.
-- Tablas: questions y question_translations (una fila por pregunta e idioma).
-- Seguridad: Row Level Security. Cualquiera puede LEER lo publicado; nadie puede escribir
-- desde la API. Las escrituras llegarán con el rol admin (profiles) en sesiones posteriores.

-- ============ PREGUNTAS ============
create table public.questions (
  id             text primary key,        -- p. ej. 'ng-signal-1'
  tech           text not null,           -- 'angular', 'react', 'javascript'...
  topic          text not null,           -- 'signals', 'routing'...
  difficulty     text not null check (difficulty in ('easy', 'medium', 'hard')),
  type           text not null check (type in ('test', 'fill', 'order')),
  correct_index  integer,                 -- solo en test y fill: posición de la correcta
  status         text not null default 'draft' check (status in ('draft', 'reviewed', 'published')),
  ref_version    text,                    -- p. ej. 'angular@22', para localizar las obsoletas
  created_at     timestamptz not null default now(),
  updated_at     timestamptz not null default now(),
  constraint correct_index_by_type check (
    (type = 'order' and correct_index is null)
    or (type <> 'order' and correct_index is not null)
  )
);
create index on public.questions (status, tech, difficulty);

-- ============ TRADUCCIONES ============
create table public.question_translations (
  question_id  text not null references public.questions (id) on update cascade on delete cascade,
  lang         text not null check (lang in ('es', 'en')),
  prompt       text not null,
  options      jsonb not null check (jsonb_typeof(options) = 'array'),
  explanation  text not null,
  primary key (question_id, lang)
);

-- Actualiza updated_at en cada cambio de una pregunta
create function public.touch_question() returns trigger
language plpgsql as $$
begin
  new.updated_at := now();
  return new;
end $$;

create trigger touch_question_trg before update on public.questions
  for each row execute function public.touch_question();

-- ============ SEGURIDAD (RLS) ============
alter table public.questions enable row level security;
alter table public.question_translations enable row level security;

-- Sin ninguna política de escritura, nadie puede insertar, editar ni borrar desde la API.
create policy "leer preguntas publicadas" on public.questions
  for select using (status = 'published');

create policy "leer traducciones de preguntas publicadas" on public.question_translations
  for select using (
    exists (
      select 1 from public.questions q
      where q.id = question_id and q.status = 'published'
    )
  );
