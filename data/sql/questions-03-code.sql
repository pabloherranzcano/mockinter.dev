-- Generado por scripts/questions-to-sql.mjs. Se puede ejecutar varias veces: no duplica nada.
-- Las preguntas nuevas entran como draft. Las que ya existen se actualizan, y su estado se respeta.

insert into public.questions (id, tech, topic, difficulty, type, correct_index, status, ref_version) values
  ('rx-map-basic', 'rxjs', 'operators', 'easy', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-observable-vs-promise-lazy', 'rxjs', 'observables', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-behaviorsubject-late-subscriber', 'rxjs', 'subjects', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-switchmap-search', 'rxjs', 'operators', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('js-nullish-vs-or', 'javascript', 'operators', 'easy', 'test', 0, 'draft', 'es2020'),
  ('js-const-block-scope', 'javascript', 'scope', 'easy', 'test', 2, 'draft', 'es2015')
on conflict (id) do update set
    tech = excluded.tech,
    topic = excluded.topic,
    difficulty = excluded.difficulty,
    correct_index = excluded.correct_index,
    ref_version = excluded.ref_version;
  
insert into public.question_translations (question_id, lang, prompt, options, explanation) values
  ('rx-map-basic', 'es', '¿Qué imprime este código?

```ts
of(1, 2, 3)
  .pipe(map((n) => n * 2))
  .subscribe(console.log);
```', '["Un solo valor: `6`, la suma de los tres números de la secuencia","`2`, `4` y `6`, cada valor en una llamada distinta a `console.log`","Un array `[2, 4, 6]` impreso una única vez en la consola","`1`, `2` y `3`, porque `map` no modifica los valores emitidos"]'::jsonb, '`of` emite 1, 2 y 3 uno a uno, `map` transforma cada valor y `subscribe` lo recibe: `console.log` se llama tres veces (2, 4 y 6). Un Observable emite valores a lo largo del tiempo, no un array de golpe.'),
  ('rx-map-basic', 'en', 'What does this code print?

```ts
of(1, 2, 3)
  .pipe(map((n) => n * 2))
  .subscribe(console.log);
```', '["A single value: `6`, the sum of the three numbers in the sequence","`2`, `4` and `6`, each value in a separate call to `console.log`","An array `[2, 4, 6]` printed only once in the console","`1`, `2` and `3`, because `map` does not modify the emitted values"]'::jsonb, '`of` emits 1, 2 and 3 one by one, `map` transforms each value and `subscribe` receives it: `console.log` is called three times (2, 4 and 6). An Observable emits values over time, not an array at once.'),
  ('rx-observable-vs-promise-lazy', 'es', '¿Cuándo se imprime `hola` en cada caso?

```ts
const obs$ = new Observable((subscriber) => {
  console.log(''hola'');
  subscriber.next(1);
});

const promesa = new Promise((resolve) => {
  console.log(''hola'');
  resolve(1);
});
```', '["La `Promise` lo imprime al crearse; el `Observable`, al suscribirse","Ambos lo imprimen en el momento de crearse, como cualquier función normal","La `Promise` lo imprime al llamar a `.then()` y el `Observable` al crearse","Ninguno lo imprime hasta que alguien usa `await` sobre ellos en un contexto async"]'::jsonb, 'El ejecutor de una `Promise` se ejecuta nada más crearla (es *eager*). Un `Observable` es *lazy*: su código solo se ejecuta cuando alguien se suscribe, y se vuelve a ejecutar en cada suscripción. Además, una `Promise` emite un solo valor y no se puede cancelar; un `Observable` puede emitir varios y se cancela con `unsubscribe`.'),
  ('rx-observable-vs-promise-lazy', 'en', 'When is `hola` printed in each case?

```ts
const obs$ = new Observable((subscriber) => {
  console.log(''hola'');
  subscriber.next(1);
});

const promesa = new Promise((resolve) => {
  console.log(''hola'');
  resolve(1);
});
```', '["The `Promise` prints it when created; the `Observable`, when subscribed","Both print it the moment they are created, like any normal function","The `Promise` prints it when `.then()` is called and the `Observable` when created","Neither prints it until someone uses `await` on them inside an async context"]'::jsonb, 'A `Promise` executor runs as soon as it is created (it is *eager*). An `Observable` is *lazy*: its code only runs when someone subscribes, and runs again on every subscription. Also, a `Promise` emits a single value and cannot be cancelled; an `Observable` can emit several and is cancelled with `unsubscribe`.'),
  ('rx-behaviorsubject-late-subscriber', 'es', '¿Qué imprime este código?

```ts
const s = new BehaviorSubject(0);
s.next(1);
s.subscribe((v) => console.log(v));
s.next(2);
```', '["`0` y `2`, porque el valor inicial se emite siempre al suscribirse","`1` y `2`: primero el valor actual y luego el nuevo que llega","`0`, `1` y `2`, porque recibe el historial completo de valores","Solo `2`, porque un `Subject` no emite lo ocurrido antes de suscribirse"]'::jsonb, 'Un `BehaviorSubject` guarda **el último valor** y lo emite al instante a cada nuevo suscriptor. Cuando te suscribes, el valor actual es 1 (el 0 ya fue sustituido), y después llega el 2. Un `ReplaySubject` reenvía varios valores anteriores, y un `Subject` normal no recuerda ninguno.'),
  ('rx-behaviorsubject-late-subscriber', 'en', 'What does this code print?

```ts
const s = new BehaviorSubject(0);
s.next(1);
s.subscribe((v) => console.log(v));
s.next(2);
```', '["`0` and `2`, because the initial value is always emitted on subscribe","`1` and `2`: first the current value and then the new one that arrives","`0`, `1` and `2`, because it receives the complete history of values","Only `2`, because a `Subject` does not emit what happened before subscribing"]'::jsonb, 'A `BehaviorSubject` keeps **the latest value** and emits it instantly to every new subscriber. When you subscribe, the current value is 1 (the 0 was already replaced), and then 2 arrives. A `ReplaySubject` replays several earlier values, and a plain `Subject` remembers none.'),
  ('rx-switchmap-search', 'es', 'Un buscador usa este código y el usuario escribe rápido. ¿Qué hace `switchMap` con la petición que sigue en curso cuando llega un término nuevo?

```ts
this.search.valueChanges.pipe(
  debounceTime(300),
  switchMap((term) => this.http.get<Result[]>(''/api/search?q='' + term)),
).subscribe((results) => (this.results = results));
```', '["La cancela y se queda solo con la respuesta de la última","Lanza todas a la vez y emite las respuestas según vayan llegando","Las pone en cola y las ejecuta una a una, en el orden en que se escribieron","Ignora los términos nuevos mientras haya una petición pendiente sin terminar"]'::jsonb, '`switchMap` se da de baja del Observable interno anterior cuando llega un valor nuevo; con `HttpClient`, eso **cancela la petición** en curso y evita que una respuesta lenta y antigua pise a la nueva. Las demás: `mergeMap` las lanza a la vez, `concatMap` las encola y `exhaustMap` ignora las nuevas mientras haya una en curso.'),
  ('rx-switchmap-search', 'en', 'A search box uses this code and the user types fast. What does `switchMap` do with the request still in flight when a new term arrives?

```ts
this.search.valueChanges.pipe(
  debounceTime(300),
  switchMap((term) => this.http.get<Result[]>(''/api/search?q='' + term)),
).subscribe((results) => (this.results = results));
```', '["It cancels it and keeps only the response to the latest one","It fires them all at once and emits responses as they arrive","It queues them and runs them one by one, in the order they were typed","It ignores the new terms while a request is still pending and unfinished"]'::jsonb, '`switchMap` unsubscribes from the previous inner Observable when a new value arrives; with `HttpClient`, that **cancels the in-flight request** and prevents a slow, old response from overwriting the new one. The others: `mergeMap` fires them all at once, `concatMap` queues them and `exhaustMap` ignores new ones while one is running.'),
  ('js-nullish-vs-or', 'es', '¿Qué imprime este código?

```ts
const a = 0 ?? 10;
const b = 0 || 10;
console.log(a, b);
```', '["`0 10`","`10 10`","`0 0`","`10 0`"]'::jsonb, '`??` solo usa el valor de la derecha cuando el de la izquierda es `null` o `undefined`, así que respeta el `0`. `||` lo usa con cualquier valor falsy (`0`, `''''`, `false`, `NaN`...). Para valores por defecto en los que `0` es válido, usa `??`.'),
  ('js-nullish-vs-or', 'en', 'What does this code print?

```ts
const a = 0 ?? 10;
const b = 0 || 10;
console.log(a, b);
```', '["`0 10`","`10 10`","`0 0`","`10 0`"]'::jsonb, '`??` only uses the right-hand value when the left is `null` or `undefined`, so it keeps the `0`. `||` uses it for any falsy value (`0`, `''''`, `false`, `NaN`...). For defaults where `0` is valid, use `??`.'),
  ('js-const-block-scope', 'es', '¿Qué ocurre al ejecutar este código?

```ts
if (true) {
  const x = 1;
}
console.log(x);
```', '["Imprime `1`, porque la condición se cumple y la variable se crea","Imprime `undefined`, porque `x` existe pero aún no tiene valor asignado","Lanza un `ReferenceError`: `x` solo existe dentro de las llaves","Lanza un `SyntaxError` al cargar el script, antes de ejecutarlo"]'::jsonb, '`let` y `const` tienen **ámbito de bloque**: solo existen entre las llaves donde se declaran, así que fuera de ellas `x` no está definida (`ReferenceError`). Con `var`, que tiene ámbito de función, sí imprimiría `1`.'),
  ('js-const-block-scope', 'en', 'What happens when this code runs?

```ts
if (true) {
  const x = 1;
}
console.log(x);
```', '["It prints `1`, because the condition holds and the variable is created","It prints `undefined`, because `x` exists but has no assigned value yet","It throws a `ReferenceError`: `x` only exists inside the braces","It throws a `SyntaxError` when loading the script, before running it"]'::jsonb, '`let` and `const` have **block scope**: they only exist between the braces where they are declared, so outside them `x` is not defined (`ReferenceError`). With `var`, which is function-scoped, it would print `1`.')
on conflict (question_id, lang) do update set
    prompt = excluded.prompt,
    options = excluded.options,
    explanation = excluded.explanation;
