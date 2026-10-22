# mockinter.dev (versión Angular)

Web tipo Duolingo para practicar entrevistas técnicas. Pablo (frontend, ~5 años
de Angular, un año sin tocar código) la reconstruye desde cero en Angular
moderno (v22) como portfolio y como práctica para entrevistas.
Siempre hablar en español.

## Cómo trabajamos

- Pablo dirige. Claude propone y escribe, pero no se acepta nada que Pablo no
  sepa explicar.
- Antes de escribir código, explicar en 2-3 frases qué se va a hacer y por qué.
  No escribir nada hasta que Pablo dé el visto bueno o diga que lo escribe él.
- Cambios pequeños: un concepto cada vez, como mucho 2-3 ficheros de golpe.
- Cuando algo haya cambiado respecto al Angular antiguo (NgModules, `*ngIf`,
  `@Input`, inyección por constructor, Zone.js...), mostrar la versión antigua
  y la nueva lado a lado.
- De vez en cuando dejar una pieza clave para que la escriba Pablo, con un TODO
  claro.
- Al acabar cada tarea, hacer una pregunta tipo entrevista sobre lo que se ha
  hecho.
- Al acabar cada sesión: commit, mini-retro de 5 minutos y 3 preguntas de
  entrevista.
- Todo en español, incluidas las preguntas y las respuestas de ejemplo de
  entrevista. Nada de frases en inglés, Pablo no va a hacer la entrevista en
  inglés.
- Estilo de código: siempre llaves en los `if`, nunca `if (x) return;` en una
  línea.
- Explicaciones y ejemplos muy sencillos, "para tontos": analogías cotidianas,
  ejemplos pequeños y una sola idea cada vez. Si Pablo dice que no lo entiende,
  volver a explicarlo más simple en vez de añadir más tecnicismos.

## Stack

- Angular 22: standalone, zoneless, signals, `@if`/`@for`, `input()`/`output()`,
  `inject()`, Signal Forms, `httpResource`.
- Supabase para auth y base de datos (Postgres), con Row Level Security.
- Vitest para tests.

## Producto (MVP)

- Flujo de práctica: pregunta → respuesta → feedback → siguiente, con racha y
  progreso. Es práctica libre: sin vidas, sin XP y sin estrellas.
- Tres tipos de pregunta, todos con corrección automática y explicación:
  - `test`: 4 opciones, una correcta.
  - `fill`: una frase con un hueco `___` y varias palabras para completarla,
    una correcta.
  - `order`: piezas desordenadas que se tocan en el orden correcto.
  Nada de preguntas `open`. El orden de implementación es `test`, luego `fill`
  (comparte datos y lógica con `test`) y por último `order`.
- Objetivo: compartir la app en LinkedIn como portfolio. Debe funcionar al
  abrir el enlace, y la primera lección se puede probar sin registrarse.
- Registro y login con email y con Google, con el progreso guardado por
  usuario.
- Onboarding al registrarse: el usuario elige las tecnologías que quiere
  practicar (selección múltiple). No se le pregunta el nivel. Se puede cambiar
  desde Ajustes.
- Filtro por tecnología en la Home, de selección múltiple y agrupado (Frontend,
  Backend, Datos, Herramientas). Viaja en la URL: `/lesson/angular,rxjs`, con `all`
  para todas y `wrong` para tus fallos. El grupo de cada tecnología está en
  `core/tech-groups.ts`. Las preguntas salen mezcladas, de cualquier dificultad: un
  junior puede practicar las difíciles desde el primer día. El campo
  `difficulty` se guarda en los datos, pero no hay filtro ni selector de
  dificultad por ahora (pospuesto hasta tener muchas preguntas).
- Sesiones cortas: por defecto 10 preguntas (selector 10 / 20 / Todas en la Home,
  `?n=10` en la URL) y botón "Otra sesión" al terminar. La lección muestra `X / N`.
- Fallos: chip "Fallos (N)" en la Home (solo con sesión). Una pregunta está en fallos
  si su ÚLTIMO intento fue `wrong` (`ProgressService.wrongIds`), sin tabla nueva.
- Botón ES/EN que cambia toda la app (UI y preguntas) en tiempo real.
- Botón "reportar un problema" en cada pregunta.
- Gratis, sin suscripción.

## Gamificación (más adelante, después del login)

Sin vidas, XP ni estrellas (práctica libre). Ideas ya decididas, para cuando haya
usuarios con progreso guardado:

- Racha (ya existe).
- Resumen al final de cada sesión: aciertos, tiempo y temas flojos.
- Medallas por hitos ("100 preguntas", "7 días seguidos", "dominas RxJS").
- Mapa de dominio por tecnología (porcentaje acertado de cada chip).
- Preferir en las sesiones las preguntas que el usuario aún no ha visto.

## Idioma (i18n)

- Nada de `@angular/localize`: traduce al compilar y obliga a recargar.
- `LanguageService` propio con `lang = signal<'es' | 'en'>()`.
- Textos de la UI en diccionarios `es.ts` y `en.ts`, tipados para que falle si
  falta una clave en un idioma.
- Una pipe o un `computed` para traducir en las plantillas.
- Idioma inicial: el guardado en el perfil del usuario; si no, el de
  localStorage; si no, el del navegador.
- Todo el contenido existe en los dos idiomas: las preguntas se escriben en
  español y se traducen enteras al inglés. No hay preguntas exclusivas de un
  idioma.
- Una pregunta no puede pasar a `published` si le falta alguna traducción. La
  etiqueta "Solo en inglés" / "Only in Spanish" queda solo como red de
  seguridad en el código.

## Banco de preguntas

- Las preguntas viven en Supabase, nunca en un JSON dentro del front.
- Objetivo: ~1000 preguntas, generadas por Claude según la demanda del mercado
  y revisadas por Pablo antes de publicarse.
- Se cargan por lotes con un JSON de importación. Se guarda un export en el
  repo (`/data`) como copia de seguridad.
- Cada pregunta lleva tecnología, tema, dificultad y versión de referencia
  (p. ej. `angular: 22`), para localizar las que queden obsoletas.

### Fases de contenido

1. Lanzamiento (300): JavaScript 80, TypeScript 50, Angular 120,
   HTML/CSS/accesibilidad 50.
2. Frontend completo (350): React 150, testing 50,
   navegador/HTTP/rendimiento/seguridad 50, Git y CI/CD 40,
   comportamiento y soft skills 60.
3. Más allá del front (350): Java/Spring 150, Node 60, SQL 50,
   diseño de sistemas front 40, cloud básico 50.

### Modelo de datos (orientativo)

- `questions`: id, tech, topic, difficulty (`easy` | `medium` | `hard`, se
  muestra como fácil / media / difícil), type (`test` | `fill` | `order`),
  correct_index (solo en `test` y `fill`), status (`draft` | `reviewed` |
  `published`), ref_version, created_at, updated_at.
- `question_translations`: question_id, lang (`es` | `en`), prompt, options
  (jsonb: en `test` y `fill` son las opciones; en `order` son las piezas, en el
  orden correcto, y se barajan al mostrarlas), explanation.
  Validación: las dos traducciones tienen el mismo número de opciones o piezas.
- `profiles`: user_id, preferred_lang, techs (lista de tecnologías elegidas en
  el onboarding), streak, last_practice_at, is_admin.
- `attempts`: user_id, question_id, result (`correct` | `wrong`), created_at.
- `reports`: user_id, question_id, message, status (`new` | `resolved` |
  `dismissed`), created_at.
- Opcional: comprobar la respuesta en el servidor (función de Postgres) para
  no enviar `correct_index` al cliente.

## Admin

MVP:
- Importar y exportar JSON/CSV, con validación por fila antes de guardar
  (p. ej. "fila 37: falta la explicación en inglés").
- Editor con ES y EN lado a lado y vista previa tal y como la ve el usuario.
- Indicador de traducción por pregunta y filtro "falta traducción".
- Flujo de estados: `draft` → `reviewed` → `published`.
- Tabla con búsqueda, filtros (tecnología, tema, dificultad, estado),
  paginación en el servidor y acciones en bloque.
- Bandeja de reportes con estados y enlace directo a editar la pregunta.

Más adelante:
- Estadísticas por pregunta (porcentaje de acierto, veces respondida) para
  detectar niveles mal asignados o preguntas mal redactadas.
- Historial de cambios y borrado lógico.

## Plan de sesiones (1 al día, unas 3 h)

0. Kickoff: historias de usuario, modelo de datos definitivo, estructura de
   carpetas, Supabase y repo.
1. Esqueleto: proyecto, layout, rutas, lazy loading, 404 y `LanguageService`
   con el botón ES/EN.
2. El corazón: flujo de práctica (test) con signals, `computed`,
   `input()` y `output()`, usando datos de prueba.
3. Datos reales: servicio con `inject()`, `httpResource`, estados de carga y
   error, filtros.
3b. Estilos: copiar el diseño de la versión React (variables de color con modo
   oscuro, tipografías, botones) a `styles.scss` y a los `.scss` de cada
   componente. Es lo primero que ve quien llega desde LinkedIn.
4. Usuarios: Signal Forms, auth con Supabase (email y Google), onboarding por
   tecnologías, guards, progreso, racha e idioma preferido.
5a. Admin I: guard por rol, importación con validación, tabla con filtros.
5b. Admin II: editor ES/EN, estados, vista previa, reportes.
6. Calidad: Vitest (`LanguageService`, servicio de preguntas, componente,
   guard) y accesibilidad básica.
7. Demo day: despliegue, README, las 300 preguntas de la fase 1 y pitch en
   inglés.