// Valida ficheros JSON de preguntas y los convierte en SQL para importarlos en Supabase.
//
//   node scripts/questions-to-sql.mjs data/questions-01.json [data/questions-02.json ...] > data/import.sql
//
// Las preguntas se importan como 'draft' (borrador): se revisan en Supabase y se publican después.
// Si algo no cumple las reglas, el script se detiene y dice qué pregunta y qué falla.

import { readFileSync } from 'node:fs';

const DIFFICULTIES = ['easy', 'medium', 'hard'];
const LANGS = ['es', 'en'];
const OPTIONS_PER_QUESTION = 4;

const errors = [];
const ids = new Set();
const questions = [];

for (const file of process.argv.slice(2)) {
  const list = JSON.parse(readFileSync(file, 'utf8'));
  list.forEach((q, i) => {
    const where = `${file} #${i + 1} (${q.id ?? 'sin id'})`;
    const fail = (message) => errors.push(`${where}: ${message}`);

    if (!/^[a-z0-9]+(-[a-z0-9]+)*$/.test(q.id ?? '')) fail('id inválido (minúsculas, números y guiones)');
    if (ids.has(q.id)) fail('id repetido');
    ids.add(q.id);
    for (const field of ['tech', 'topic', 'refVersion']) {
      if (!q[field]) fail(`falta ${field}`);
    }
    if (!DIFFICULTIES.includes(q.difficulty)) fail(`difficulty debe ser ${DIFFICULTIES.join(' | ')}`);
    if (!Number.isInteger(q.correctIndex) || q.correctIndex < 0 || q.correctIndex >= OPTIONS_PER_QUESTION) {
      fail(`correctIndex debe ser un entero entre 0 y ${OPTIONS_PER_QUESTION - 1}`);
    }
    for (const lang of LANGS) {
      const text = q[lang];
      if (!text) {
        fail(`falta la traducción ${lang}`);
        continue;
      }
      // Comillas inversas sin pareja (código en línea o bloques ``` sin cerrar)
      const backticks = (value) => (String(value).match(/`/g) ?? []).length;
      const strings = [text.prompt, text.explanation, ...(Array.isArray(text.options) ? text.options : [])];
      if (strings.some((value) => backticks(value) % 2 !== 0)) {
        fail(`${lang}: hay comillas inversas sin cerrar`);
      }
      if (!text.prompt?.trim()) fail(`${lang}: falta prompt`);
      if (!text.explanation?.trim()) fail(`${lang}: falta explanation`);
      if (!Array.isArray(text.options) || text.options.length !== OPTIONS_PER_QUESTION) {
        fail(`${lang}: debe haber exactamente ${OPTIONS_PER_QUESTION} opciones`);
      } else if (new Set(text.options).size !== text.options.length) {
        fail(`${lang}: hay opciones repetidas`);
      }
    }
    questions.push(q);
  });
}

// Aviso de calidad: si la opción correcta es casi siempre la más larga, se puede acertar sin saber
if (questions.length >= 10) {
  const longest = questions.filter((q) => {
    const lengths = q.es.options.map((option) => option.length);
    return lengths[q.correctIndex] === Math.max(...lengths);
  }).length;
  if (longest / questions.length > 0.4) {
    errors.push(
      `sesgo de longitud: la opción correcta es la más larga en ${longest} de ${questions.length} preguntas (ES). ` +
        'Alarga los distractores o acorta la correcta (lo esperable es ~25 %).',
    );
  }
}

if (errors.length > 0) {
  console.error(`\n${errors.length} problema(s):\n`);
  errors.forEach((e) => console.error(`  - ${e}`));
  process.exit(1);
}

const sql = (text) => `'${String(text).replaceAll("'", "''")}'`;
const out = [];
out.push('-- Generado por scripts/questions-to-sql.mjs. Se puede ejecutar varias veces: no duplica nada.');
out.push('-- Las preguntas entran como draft: se revisan y se publican después.\n');

out.push('insert into public.questions (id, tech, topic, difficulty, type, correct_index, status, ref_version) values');
out.push(
  questions
    .map((q) => `  (${sql(q.id)}, ${sql(q.tech)}, ${sql(q.topic)}, ${sql(q.difficulty)}, 'test', ${q.correctIndex}, 'draft', ${sql(q.refVersion)})`)
    .join(',\n'),
);
out.push('on conflict (id) do nothing;\n');

out.push('insert into public.question_translations (question_id, lang, prompt, options, explanation) values');
out.push(
  questions
    .flatMap((q) =>
      LANGS.map(
        (lang) =>
          `  (${sql(q.id)}, '${lang}', ${sql(q[lang].prompt)}, ${sql(JSON.stringify(q[lang].options))}::jsonb, ${sql(q[lang].explanation)})`,
      ),
    )
    .join(',\n'),
);
out.push('on conflict (question_id, lang) do nothing;');

console.log(out.join('\n'));
console.error(`OK: ${questions.length} preguntas válidas.`);
