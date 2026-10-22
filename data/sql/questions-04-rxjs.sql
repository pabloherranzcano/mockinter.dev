-- Generado por scripts/questions-to-sql.mjs. Se puede ejecutar varias veces: no duplica nada.
-- Las preguntas nuevas entran como draft. Las que ya existen se actualizan, y su estado se respeta.

insert into public.questions (id, tech, topic, difficulty, type, correct_index, status, ref_version) values
  ('rx-what-is-observable', 'rxjs', 'observables', 'easy', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-observable-vs-promise-values', 'rxjs', 'observables', 'easy', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-cold-http-two-subscribes', 'rxjs', 'observables', 'medium', 'test', 3, 'draft', 'rxjs@7'),
  ('rx-sharereplay-http', 'rxjs', 'observables', 'hard', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-hot-vs-cold', 'rxjs', 'observables', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-pipe-purpose', 'rxjs', 'observables', 'easy', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-error-terminates-stream', 'rxjs', 'observables', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-interval-never-completes', 'rxjs', 'observables', 'easy', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-why-unsubscribe', 'rxjs', 'subscriptions', 'easy', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-async-pipe-benefit', 'rxjs', 'subscriptions', 'easy', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-takeuntildestroyed', 'rxjs', 'subscriptions', 'medium', 'test', 3, 'draft', 'rxjs@7'),
  ('rx-subject-definition', 'rxjs', 'subjects', 'easy', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-subject-no-replay', 'rxjs', 'subjects', 'medium', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-replaysubject-buffer', 'rxjs', 'subjects', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-asyncsubject-last', 'rxjs', 'subjects', 'hard', 'test', 3, 'draft', 'rxjs@7'),
  ('rx-behaviorsubject-initial-value', 'rxjs', 'subjects', 'easy', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-subject-multicast', 'rxjs', 'subjects', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-subject-asobservable', 'rxjs', 'subjects', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-map-vs-switchmap', 'rxjs', 'operators', 'easy', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-filter-basic', 'rxjs', 'operators', 'easy', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-tap-purpose', 'rxjs', 'operators', 'easy', 'test', 3, 'draft', 'rxjs@7'),
  ('rx-scan-accumulate', 'rxjs', 'operators', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-startwith', 'rxjs', 'operators', 'easy', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-distinctuntilchanged', 'rxjs', 'operators', 'easy', 'test', 3, 'draft', 'rxjs@7'),
  ('rx-debouncetime', 'rxjs', 'operators', 'easy', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-take-completes', 'rxjs', 'operators', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-first-vs-take1', 'rxjs', 'operators', 'hard', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-finalize-when', 'rxjs', 'operators', 'medium', 'test', 3, 'draft', 'rxjs@7'),
  ('rx-catcherror-fallback', 'rxjs', 'operators', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-retry-resubscribe', 'rxjs', 'operators', 'medium', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-concatmap-order', 'rxjs', 'operators', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-exhaustmap-submit', 'rxjs', 'operators', 'medium', 'test', 3, 'draft', 'rxjs@7'),
  ('rx-mergemap-parallel', 'rxjs', 'operators', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-combinelatest-sync', 'rxjs', 'operators', 'hard', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-forkjoin-parallel', 'rxjs', 'operators', 'medium', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-withlatestfrom', 'rxjs', 'operators', 'hard', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-merge-vs-concat', 'rxjs', 'operators', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-nested-subscribe-antipattern', 'rxjs', 'operators', 'medium', 'test', 3, 'draft', 'rxjs@7'),
  ('rx-observable-to-promise', 'rxjs', 'interop', 'medium', 'test', 2, 'draft', 'rxjs@7'),
  ('rx-tosignal', 'rxjs', 'interop', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-toobservable-async', 'rxjs', 'interop', 'hard', 'test', 3, 'draft', 'rxjs@7')
on conflict (id) do update set
    tech = excluded.tech,
    topic = excluded.topic,
    difficulty = excluded.difficulty,
    correct_index = excluded.correct_index,
    ref_version = excluded.ref_version;
  
insert into public.question_translations (question_id, lang, prompt, options, explanation) values
  ('rx-what-is-observable', 'es', '¿Qué es un `Observable` en RxJS?', '["Una promesa mejorada que siempre devuelve un único valor y que no se puede cancelar","Un array especial que guarda todos los valores y se recorre con `forEach`","Una fuente que emite valores a lo largo del tiempo y a la que te suscribes","Un evento del DOM al que se le añaden operadores de forma automática"]'::jsonb, 'Un `Observable` representa un flujo de valores (cero, uno o muchos) que llegan con el tiempo. No hace nada hasta que alguien se suscribe, y cada suscripción se puede cancelar.'),
  ('rx-what-is-observable', 'en', 'What is an `Observable` in RxJS?', '["An improved promise that always returns a single value and cannot be cancelled","A special array that stores all the values and is iterated with `forEach`","A source that emits values over time and that you subscribe to","A DOM event to which operators are automatically added"]'::jsonb, 'An `Observable` represents a stream of values (zero, one or many) arriving over time. It does nothing until someone subscribes, and each subscription can be cancelled.'),
  ('rx-observable-vs-promise-values', 'es', '¿Qué diferencia hay entre una `Promise` y un `Observable` respecto a los valores y a la cancelación?', '["La `Promise` puede emitir varios valores y cancelarse; el `Observable` solo emite uno","La `Promise` resuelve un único valor y no se cancela; el `Observable` emite varios y se cancela","No hay ninguna diferencia: los dos emiten un valor y se cancelan con `unsubscribe`","El `Observable` siempre es síncrono y la `Promise` siempre es asíncrona por definición"]'::jsonb, 'Una `Promise` se resuelve una sola vez y no se puede cancelar. Un `Observable` puede emitir muchos valores a lo largo del tiempo y se cancela con `unsubscribe`. Además, la `Promise` es *eager* y el `Observable` es *lazy*.'),
  ('rx-observable-vs-promise-values', 'en', 'What is the difference between a `Promise` and an `Observable` regarding values and cancellation?', '["The `Promise` can emit several values and be cancelled; the `Observable` emits only one","A `Promise` gives one value, uncancellable; an `Observable` gives many and can be cancelled","There is no difference: both emit one value and are cancelled with `unsubscribe`","The `Observable` is always synchronous and the `Promise` is always asynchronous by definition"]'::jsonb, 'A `Promise` settles once and cannot be cancelled. An `Observable` can emit many values over time and is cancelled with `unsubscribe`. Also, a `Promise` is *eager* and an `Observable` is *lazy*.'),
  ('rx-cold-http-two-subscribes', 'es', '¿Cuántas peticiones HTTP se hacen con este código?

```ts
const users$ = this.http.get<User[]>(''/api/users'');

users$.subscribe((u) => console.log(''A'', u.length));
users$.subscribe((u) => console.log(''B'', u.length));
```', '["Una sola, porque las dos suscripciones usan la misma variable `users$`","Ninguna, porque `get` solo prepara la petición hasta que se llama a `toPromise`","Tres: una al crear la variable y una más por cada suscripción posterior","Dos: un Observable de `HttpClient` es *cold* y cada suscripción lanza su petición"]'::jsonb, 'Los Observables de `HttpClient` son *cold*: no hacen nada hasta que alguien se suscribe, y **cada suscripción ejecuta su propia petición**. Para compartir una sola petición entre varios suscriptores se usa `shareReplay(1)`.'),
  ('rx-cold-http-two-subscribes', 'en', 'How many HTTP requests does this code make?

```ts
const users$ = this.http.get<User[]>(''/api/users'');

users$.subscribe((u) => console.log(''A'', u.length));
users$.subscribe((u) => console.log(''B'', u.length));
```', '["Just one, because both subscriptions use the same `users$` variable","None, because `get` only prepares the request until `toPromise` is called","Three: one when creating the variable and one more per later subscription","Two: it is a *cold* Observable and each subscription fires its request"]'::jsonb, '`HttpClient` Observables are *cold*: they do nothing until someone subscribes, and **each subscription runs its own request**. To share a single request among several subscribers, use `shareReplay(1)`.'),
  ('rx-sharereplay-http', 'es', '¿Qué cambia al añadir `shareReplay(1)` en este código?

```ts
const users$ = this.http.get<User[]>(''/api/users'').pipe(shareReplay(1));

users$.subscribe((u) => console.log(''A'', u.length));
users$.subscribe((u) => console.log(''B'', u.length));
```', '["Se hace una sola petición y el segundo suscriptor recibe el valor guardado","Se hacen dos peticiones, pero la segunda se cancela cuando llega la respuesta de la primera","Deja de funcionar, porque `HttpClient` no admite operadores de multidifusión como este","Se hacen dos peticiones en paralelo y sus respuestas se combinan después en un array"]'::jsonb, '`shareReplay(1)` comparte una única ejecución del Observable de origen entre todos los suscriptores y repite el último valor a los que llegan tarde. Así hay una sola petición, aunque se suscriban varios.'),
  ('rx-sharereplay-http', 'en', 'What changes when `shareReplay(1)` is added to this code?

```ts
const users$ = this.http.get<User[]>(''/api/users'').pipe(shareReplay(1));

users$.subscribe((u) => console.log(''A'', u.length));
users$.subscribe((u) => console.log(''B'', u.length));
```', '["A single request is made and the second subscriber receives the stored value","Two requests are made, but the second is cancelled when the first one responds","It stops working, because `HttpClient` does not support multicasting operators like this","Two requests run in parallel and their responses are then combined into an array"]'::jsonb, '`shareReplay(1)` shares one execution of the source Observable among all subscribers and replays the latest value to late ones. That gives a single request, even with several subscribers.'),
  ('rx-hot-vs-cold', 'es', '¿Qué es un Observable *hot*?', '["Uno que emite valores con independencia de las suscripciones y los comparte entre suscriptores","Uno que vuelve a ejecutar su código desde el principio por cada suscriptor que se une","Uno que consume mucha CPU y por eso hay que limitarlo con `debounceTime` siempre","Uno que solo se puede crear a partir de eventos de teclado, como `keydown`"]'::jsonb, 'Un Observable *hot* produce los valores fuera de la suscripción (eventos del DOM con `fromEvent`, un `Subject`): los suscriptores comparten la misma emisión. Uno *cold* (como `HttpClient`) ejecuta su lógica de nuevo por cada suscripción.'),
  ('rx-hot-vs-cold', 'en', 'What is a *hot* Observable?', '["One that emits values independently of subscriptions and shares them among subscribers","One that re-runs its code from scratch for each subscriber that joins","One that uses a lot of CPU and therefore must always be limited with `debounceTime`","One that can only be created from keyboard events, such as `keydown`"]'::jsonb, 'A *hot* Observable produces values outside the subscription (DOM events with `fromEvent`, a `Subject`): subscribers share the same emission. A *cold* one (like `HttpClient`) runs its logic again for each subscription.'),
  ('rx-pipe-purpose', 'es', '¿Para qué sirve `pipe()` en un Observable?', '["Para suscribirse al Observable y recibir sus valores directamente en una función","Para cancelar la suscripción cuando el componente se destruye, sin código extra","Para encadenar operadores que transforman el flujo antes de suscribirse a él","Para convertir el Observable en un `Subject` que se pueda reutilizar luego"]'::jsonb, '`pipe()` recibe uno o varios operadores (`map`, `filter`, `switchMap`...) y devuelve un nuevo Observable con ellos aplicados en orden. No ejecuta nada: hasta que alguien se suscribe, no ocurre nada.'),
  ('rx-pipe-purpose', 'en', 'What is `pipe()` for on an Observable?', '["To subscribe to the Observable and receive its values directly in a function","To cancel the subscription when the component is destroyed, with no extra code","To chain operators that transform the stream before subscribing to it","To turn the Observable into a `Subject` that can be reused later"]'::jsonb, '`pipe()` takes one or more operators (`map`, `filter`, `switchMap`...) and returns a new Observable with them applied in order. It runs nothing: until someone subscribes, nothing happens.'),
  ('rx-error-terminates-stream', 'es', '¿Qué imprime este código?

```ts
of(1, 2, 3)
  .pipe(
    map((n) => {
      if (n === 2) {
        throw new Error(''fallo'');
      }
      return n;
    }),
  )
  .subscribe({
    next: (n) => console.log(n),
    error: () => console.log(''error''),
    complete: () => console.log(''fin''),
  });
```', '["`1`, `error`, `3` y `fin`, porque el error no detiene el resto de valores","`1` y `error`: tras el error el flujo termina y no se completa","`1`, `error` y `fin`, porque `complete` se ejecuta siempre al terminar","`1`, `3` y `fin`, porque la excepción se ignora dentro de `map`"]'::jsonb, 'Cuando un Observable emite un error, **el flujo termina**: no llegan más valores y `complete` no se ejecuta. Un Observable solo puede terminar de dos formas, con `error` o con `complete`, nunca con las dos.'),
  ('rx-error-terminates-stream', 'en', 'What does this code print?

```ts
of(1, 2, 3)
  .pipe(
    map((n) => {
      if (n === 2) {
        throw new Error(''fallo'');
      }
      return n;
    }),
  )
  .subscribe({
    next: (n) => console.log(n),
    error: () => console.log(''error''),
    complete: () => console.log(''fin''),
  });
```', '["`1`, `error`, `3` and `fin`, because the error does not stop the remaining values","`1` and `error`: after the error the stream ends and does not complete","`1`, `error` and `fin`, because `complete` always runs when it finishes","`1`, `3` and `fin`, because the exception is ignored inside `map`"]'::jsonb, 'When an Observable emits an error, **the stream ends**: no more values arrive and `complete` does not run. An Observable can only end in two ways, with `error` or with `complete`, never both.'),
  ('rx-interval-never-completes', 'es', '`interval(1000)` emite un valor cada segundo. ¿Qué ocurre si no te das de baja?', '["Se completa solo después del décimo valor, como si fuera una cuenta atrás","Sigue emitiendo para siempre, aunque ya nadie necesite los valores","Se detiene cuando el componente que lo creó deja de estar visible","Emite una sola vez y después se completa automáticamente por sí mismo"]'::jsonb, '`interval` no termina nunca por sí solo. Si te suscribes dentro de un componente y no cancelas (con `unsubscribe`, `takeUntilDestroyed()` o `take(n)`), seguirá ejecutándose tras destruirlo: una fuga de memoria.'),
  ('rx-interval-never-completes', 'en', '`interval(1000)` emits a value every second. What happens if you do not unsubscribe?', '["It completes by itself after the tenth value, like a countdown","It keeps emitting forever, even when nobody needs the values anymore","It stops when the component that created it is no longer visible","It emits once and then completes automatically on its own"]'::jsonb, '`interval` never ends by itself. If you subscribe inside a component and do not cancel (with `unsubscribe`, `takeUntilDestroyed()` or `take(n)`), it keeps running after the component is destroyed: a memory leak.'),
  ('rx-why-unsubscribe', 'es', '¿Por qué hay que darse de baja de ciertos Observables dentro de un componente?', '["Porque si no, Angular lanza un error en cuanto el componente se destruye","Porque una suscripción a un flujo que no termina sigue viva y provoca fugas de memoria","Porque `subscribe` bloquea el hilo principal hasta que se cancela la suscripción","Porque los Observables de `HttpClient` se repiten indefinidamente hasta cancelarlos"]'::jsonb, 'Los Observables que no terminan solos (`interval`, `fromEvent`, `Subject`, `valueChanges`) siguen activos tras destruir el componente. Los de `HttpClient` se completan al recibir la respuesta, y no necesitan baja.'),
  ('rx-why-unsubscribe', 'en', 'Why must you unsubscribe from certain Observables inside a component?', '["Because otherwise Angular throws an error as soon as the component is destroyed","Because a subscription to a never-ending stream stays alive and leaks memory","Because `subscribe` blocks the main thread until the subscription is cancelled","Because `HttpClient` Observables repeat indefinitely until they are cancelled"]'::jsonb, 'Observables that do not end by themselves (`interval`, `fromEvent`, `Subject`, `valueChanges`) stay active after the component is destroyed. `HttpClient` ones complete when the response arrives, so they need no unsubscribe.'),
  ('rx-async-pipe-benefit', 'es', '¿Qué ventaja tiene la pipe `async` en una plantilla?', '["Convierte el Observable en una `Promise` para poder escribir `await` en el HTML","Ejecuta el Observable en un hilo aparte, para no bloquear nunca la interfaz","Se suscribe, pinta el último valor y se da de baja cuando el componente se destruye","Hace que el Observable sea *hot* y se comparta entre todos los componentes de la app"]'::jsonb, 'La pipe `async` gestiona la suscripción por ti: se suscribe, muestra el último valor, avisa a Angular de que hay que repintar y se da de baja al destruirse la vista. Evita el `subscribe` manual y las fugas.'),
  ('rx-async-pipe-benefit', 'en', 'What advantage does the `async` pipe have in a template?', '["It turns the Observable into a `Promise` so you can write `await` in the HTML","It runs the Observable on a separate thread, so the interface is never blocked","It subscribes, shows the latest value and unsubscribes on destroy","It makes the Observable *hot* and shared across every component in the app"]'::jsonb, 'The `async` pipe manages the subscription for you: it subscribes, shows the latest value, tells Angular to re-render and unsubscribes when the view is destroyed. It avoids manual `subscribe` and leaks.'),
  ('rx-takeuntildestroyed', 'es', '¿Qué hace `takeUntilDestroyed()` en este constructor?

```ts
export class Clock {
  constructor() {
    interval(1000)
      .pipe(takeUntilDestroyed())
      .subscribe((n) => console.log(n));
  }
}
```', '["Detiene el `interval` tras el primer valor emitido, igual que haría `take(1)`","Obliga a llamar a `unsubscribe()` a mano en `ngOnDestroy`, para evitar olvidos","Convierte el `interval` en una `Promise` que se resuelve al destruirse el componente","Cancela la suscripción automáticamente cuando el componente se destruye"]'::jsonb, '`takeUntilDestroyed()` completa el flujo cuando se destruye el contexto en el que se llamó, sin código de limpieza. Se usa en un contexto de inyección (constructor o inicializador de propiedad); fuera, hay que pasarle un `DestroyRef`.'),
  ('rx-takeuntildestroyed', 'en', 'What does `takeUntilDestroyed()` do in this constructor?

```ts
export class Clock {
  constructor() {
    interval(1000)
      .pipe(takeUntilDestroyed())
      .subscribe((n) => console.log(n));
  }
}
```', '["It stops the `interval` after the first emitted value, just like `take(1)` would","It forces you to call `unsubscribe()` by hand in `ngOnDestroy`, to avoid slips","It turns the `interval` into a `Promise` that resolves when the component is destroyed","It cancels the subscription automatically when the component is destroyed"]'::jsonb, '`takeUntilDestroyed()` completes the stream when the context it was called in is destroyed, with no cleanup code. It is used in an injection context (constructor or property initializer); elsewhere, you must pass it a `DestroyRef`.'),
  ('rx-subject-definition', 'es', '¿Qué es un `Subject`?', '["Un Observable que además permite emitir valores con `next()` y comparte la emisión con todos","Un Observable que solo emite un valor y después se completa por sí solo","Una función pura que transforma el valor de otro Observable en uno nuevo","Un operador que une varios Observables en uno solo, en el orden de llegada"]'::jsonb, 'Un `Subject` es a la vez un Observable (puedes suscribirte) y un Observer (puedes llamar a `next`, `error` y `complete`). Es *multicast*: todos los suscriptores reciben la misma emisión.'),
  ('rx-subject-definition', 'en', 'What is a `Subject`?', '["An Observable that also emits values with `next()`, shared with everyone","An Observable that emits a single value and then completes by itself","A pure function that transforms the value of another Observable into a new one","An operator that merges several Observables into one, in order of arrival"]'::jsonb, 'A `Subject` is both an Observable (you can subscribe) and an Observer (you can call `next`, `error` and `complete`). It is *multicast*: every subscriber receives the same emission.'),
  ('rx-subject-no-replay', 'es', '¿Qué imprime este código?

```ts
const s = new Subject<number>();
s.next(1);
s.subscribe((n) => console.log(n));
s.next(2);
```', '["`1` y `2`, porque recuerda el valor anterior","`1`, porque solo emite el primero que recibe","`2`, el único valor emitido tras suscribirse","Nada, porque necesita un valor inicial"]'::jsonb, 'Un `Subject` normal **no recuerda** nada: el `1` se emitió cuando no había nadie suscrito y se perdió. Solo el `2`, emitido después de suscribirse, llega. Para recordar valores existen `BehaviorSubject` y `ReplaySubject`.'),
  ('rx-subject-no-replay', 'en', 'What does this code print?

```ts
const s = new Subject<number>();
s.next(1);
s.subscribe((n) => console.log(n));
s.next(2);
```', '["`1` and `2`, because it remembers the previous value","`1`, because it only emits the first one it receives","`2`, the only value emitted after subscribing","Nothing, because it needs an initial value"]'::jsonb, 'A plain `Subject` **remembers nothing**: the `1` was emitted when nobody was subscribed and was lost. Only the `2`, emitted after subscribing, arrives. To remember values there are `BehaviorSubject` and `ReplaySubject`.'),
  ('rx-replaysubject-buffer', 'es', '¿Qué imprime este código?

```ts
const s = new ReplaySubject<number>(2);
s.next(1);
s.next(2);
s.next(3);
s.subscribe((n) => console.log(n));
```', '["`1`, `2` y `3`, todo el historial de valores emitidos","`2` y `3`, los dos últimos valores guardados","`3`, solo el último valor emitido hasta ese momento","Nada, hasta que se emita un valor nuevo después de suscribirse"]'::jsonb, 'Un `ReplaySubject(2)` guarda un búfer con los **dos últimos** valores y los reenvía a cada nuevo suscriptor. `BehaviorSubject` es el caso particular de recordar solo uno y exigir un valor inicial.'),
  ('rx-replaysubject-buffer', 'en', 'What does this code print?

```ts
const s = new ReplaySubject<number>(2);
s.next(1);
s.next(2);
s.next(3);
s.subscribe((n) => console.log(n));
```', '["`1`, `2` and `3`, the whole history of emitted values","`2` and `3`, the last two stored values","`3`, only the last value emitted up to that moment","Nothing, until a new value is emitted after subscribing"]'::jsonb, 'A `ReplaySubject(2)` keeps a buffer with the **last two** values and replays them to each new subscriber. `BehaviorSubject` is the particular case of remembering just one and requiring an initial value.'),
  ('rx-asyncsubject-last', 'es', '¿Cuándo emite su valor un `AsyncSubject`?', '["Cada vez que recibe un valor con `next()`, igual que un `Subject` normal","Al suscribirse, emite el último valor que hubiera guardado hasta ese momento","Solo cuando se llama a `next()` dos veces seguidas con el mismo valor","Solo el último valor, y únicamente cuando el Subject se completa"]'::jsonb, 'Un `AsyncSubject` guarda el último valor y **solo lo emite cuando se llama a `complete()`**. Si nunca se completa, no emite nada. Se parece a lo que hace una `Promise`: un único resultado final.'),
  ('rx-asyncsubject-last', 'en', 'When does an `AsyncSubject` emit its value?', '["Every time it receives a value with `next()`, just like a normal `Subject`","On subscribing, it emits the last value it had stored up to that moment","Only when `next()` is called twice in a row with the same value","Only the last value, and only when the Subject completes"]'::jsonb, 'An `AsyncSubject` keeps the last value and **only emits it when `complete()` is called**. If it never completes, it emits nothing. It resembles what a `Promise` does: a single final result.'),
  ('rx-behaviorsubject-initial-value', 'es', '¿Qué necesita un `BehaviorSubject` al crearse y qué ofrece frente a un `Subject`?', '["Un número de valores a recordar; ofrece un historial completo de emisiones","Un valor inicial; ofrece el valor actual a cualquier suscriptor, y en `.value`","Un Observable de origen; ofrece que solo emita cuando se complete el flujo","Nada; ofrece ejecutarse en un hilo aparte para no bloquear la interfaz"]'::jsonb, 'Un `BehaviorSubject` se crea con un valor inicial, guarda siempre el valor actual, lo emite al instante a cada suscriptor nuevo y permite leerlo de forma síncrona con `.value`. Es muy usado para estado en servicios.'),
  ('rx-behaviorsubject-initial-value', 'en', 'What does a `BehaviorSubject` need on creation and what does it offer over a `Subject`?', '["A number of values to remember; it offers a full history of emissions","An initial value; it offers the current value to any subscriber, and via `.value`","A source Observable; it offers to emit only when the stream completes","Nothing; it offers to run on a separate thread so the interface is not blocked"]'::jsonb, 'A `BehaviorSubject` is created with an initial value, always holds the current value, emits it instantly to each new subscriber and lets you read it synchronously with `.value`. It is widely used for state in services.'),
  ('rx-subject-multicast', 'es', 'Dos componentes se suscriben al mismo `Subject` y después se llama a `next(5)`. ¿Qué reciben?', '["Ambos reciben el mismo valor, porque el `Subject` comparte la emisión","Solo el primero que se suscribió, porque el valor se consume al entregarlo","Cada uno ejecuta su propia copia de la emisión, igual que un Observable *cold*","Ninguno, porque tendrían que haberse suscrito antes de que existiera el `Subject`"]'::jsonb, 'Un `Subject` es *multicast*: una sola emisión llega a **todos** los suscriptores a la vez. Es la diferencia clave con un Observable *cold*, que ejecuta su lógica por separado para cada suscripción.'),
  ('rx-subject-multicast', 'en', 'Two components subscribe to the same `Subject` and then `next(5)` is called. What do they receive?', '["Both receive the same value, because the `Subject` shares the emission","Only the first one that subscribed, because the value is consumed on delivery","Each runs its own copy of the emission, just like a *cold* Observable","Neither, because they should have subscribed before the `Subject` existed"]'::jsonb, 'A `Subject` is *multicast*: a single emission reaches **all** subscribers at once. That is the key difference with a *cold* Observable, which runs its logic separately for each subscription.'),
  ('rx-subject-asobservable', 'es', 'Un servicio guarda `private readonly _state = new BehaviorSubject(0)` y expone `state$ = this._state.asObservable()`. ¿Por qué?', '["Porque `asObservable()` hace que el Subject emita más rápido a los suscriptores","Para que los consumidores puedan leer los valores, pero no llamar a `next()`","Porque un `BehaviorSubject` no se puede exponer fuera de la clase que lo crea","Para convertir el estado en una `Promise` que se resuelva una única vez"]'::jsonb, '`asObservable()` devuelve una vista de solo lectura: quien la usa puede suscribirse, pero no emitir. Así solo el servicio puede cambiar el estado, y los componentes lo consumen. Es el mismo principio que exponer `asReadonly()` en un signal.'),
  ('rx-subject-asobservable', 'en', 'A service keeps `private readonly _state = new BehaviorSubject(0)` and exposes `state$ = this._state.asObservable()`. Why?', '["Because `asObservable()` makes the Subject emit faster to subscribers","So that consumers can read the values but not call `next()`","Because a `BehaviorSubject` cannot be exposed outside the class that creates it","To turn the state into a `Promise` that resolves only once"]'::jsonb, '`asObservable()` returns a read-only view: whoever uses it can subscribe but not emit. That way only the service can change the state, and components consume it. It is the same principle as exposing `asReadonly()` on a signal.'),
  ('rx-map-vs-switchmap', 'es', '¿Qué diferencia hay entre `map` y `switchMap`?', '["`map` convierte cada valor en otro valor; `switchMap` lo convierte en un Observable y se suscribe a él","`map` es asíncrono y `switchMap` es siempre síncrono, sin excepción alguna","`switchMap` solo funciona con `Promise` y `map` solo funciona con arrays","No hay diferencia: son dos nombres distintos para exactamente la misma operación"]'::jsonb, '`map` aplica una función a cada valor y emite el resultado. `switchMap` aplica una función que **devuelve un Observable**, se suscribe a él y, si llega un valor nuevo, cancela el Observable interno anterior.'),
  ('rx-map-vs-switchmap', 'en', 'What is the difference between `map` and `switchMap`?', '["`map` returns a value; `switchMap` returns an Observable and subscribes","`map` is asynchronous and `switchMap` is always synchronous, without exception","`switchMap` only works with a `Promise` and `map` only works with arrays","There is no difference: they are two names for exactly the same operation"]'::jsonb, '`map` applies a function to each value and emits the result. `switchMap` applies a function that **returns an Observable**, subscribes to it and, when a new value arrives, cancels the previous inner Observable.'),
  ('rx-filter-basic', 'es', '¿Qué imprime este código?

```ts
of(1, 2, 3, 4)
  .pipe(filter((n) => n % 2 === 0))
  .subscribe(console.log);
```', '["`1` y `3`, los números impares de la secuencia","`1`, `2`, `3` y `4`, porque `filter` solo cambia el orden","`2` y `4`, los que cumplen la condición","`4` únicamente, porque solo deja pasar el último"]'::jsonb, '`filter` deja pasar solo los valores para los que la función devuelve `true`. Aquí, los pares: `2` y `4`.'),
  ('rx-filter-basic', 'en', 'What does this code print?

```ts
of(1, 2, 3, 4)
  .pipe(filter((n) => n % 2 === 0))
  .subscribe(console.log);
```', '["`1` and `3`, the odd numbers of the sequence","`1`, `2`, `3` and `4`, because `filter` only changes the order","`2` and `4`, the ones that meet the condition","`4` only, because it only lets the last one through"]'::jsonb, '`filter` only lets through values for which the function returns `true`. Here, the even ones: `2` and `4`.'),
  ('rx-tap-purpose', 'es', '¿Para qué sirve el operador `tap`?', '["Para transformar cada valor y emitir el resultado de esa transformación","Para ignorar los valores repetidos consecutivos que lleguen al flujo","Para esperar un tiempo antes de emitir cada uno de los valores","Para ejecutar efectos secundarios, como un `console.log`, sin cambiar los valores"]'::jsonb, '`tap` deja pasar cada valor tal cual y ejecuta una función "de paso": depurar con `console.log`, guardar en caché, mostrar un indicador de carga... No modifica el flujo.'),
  ('rx-tap-purpose', 'en', 'What is the `tap` operator for?', '["To transform each value and emit the result of that transformation","To ignore consecutive repeated values arriving in the stream","To wait some time before emitting each of the values","To run side effects, like `console.log`, without changing values"]'::jsonb, '`tap` lets each value through unchanged and runs a "pass-through" function: debugging with `console.log`, caching, showing a loading indicator... It does not modify the stream.'),
  ('rx-scan-accumulate', 'es', '¿Qué imprime este código?

```ts
of(1, 2, 3)
  .pipe(scan((acc, n) => acc + n, 0))
  .subscribe(console.log);
```', '["`6`, la suma final, una única vez al terminar","`1`, `3` y `6`: el acumulado tras cada valor","`0`, `1`, `2` y `3`, empezando por el valor inicial","`1`, `2` y `3`, porque `scan` no cambia los valores"]'::jsonb, '`scan` es como `reduce`, pero **emite el acumulado en cada paso**: 0+1=1, 1+2=3, 3+3=6. `reduce` solo emitiría el `6` al completarse. Es la base de los patrones tipo "store" con RxJS.'),
  ('rx-scan-accumulate', 'en', 'What does this code print?

```ts
of(1, 2, 3)
  .pipe(scan((acc, n) => acc + n, 0))
  .subscribe(console.log);
```', '["`6`, the final sum, only once at the end","`1`, `3` and `6`: the accumulated value after each one","`0`, `1`, `2` and `3`, starting with the initial value","`1`, `2` and `3`, because `scan` does not change the values"]'::jsonb, '`scan` is like `reduce`, but **emits the accumulator at every step**: 0+1=1, 1+2=3, 3+3=6. `reduce` would only emit `6` on completion. It is the basis of "store"-style patterns with RxJS.'),
  ('rx-startwith', 'es', '¿Qué hace `startWith(0)` en un flujo?', '["Hace que el flujo empiece únicamente cuando llegue el primer cero","Sustituye el primer valor del flujo por un cero antes de emitirlo","Emite `0` al suscribirse, antes de los valores propios del flujo","Añade un cero al final del flujo, justo cuando este se completa"]'::jsonb, '`startWith` antepone uno o varios valores iniciales. Es habitual con `combineLatest` o `valueChanges`, para que el flujo tenga un valor desde el primer momento y no haya que esperar a la primera emisión.'),
  ('rx-startwith', 'en', 'What does `startWith(0)` do in a stream?', '["It makes the stream start only when the first zero arrives","It replaces the first value of the stream with a zero before emitting it","It emits `0` on subscribing, before the stream''s own values","It appends a zero at the end of the stream, right when it completes"]'::jsonb, '`startWith` prepends one or more initial values. It is common with `combineLatest` or `valueChanges`, so the stream has a value from the very first moment and you need not wait for the first emission.'),
  ('rx-distinctuntilchanged', 'es', '¿Qué imprime este código?

```ts
of(1, 1, 2, 2, 1)
  .pipe(distinctUntilChanged())
  .subscribe(console.log);
```', '["`1` y `2`, sin repetidos en toda la secuencia","`1`, `1`, `2`, `2` y `1`, sin ningún cambio","`2` y `1`, porque ignora el primer valor siempre","`1`, `2` y `1`: solo descarta los repetidos consecutivos"]'::jsonb, '`distinctUntilChanged` compara cada valor con **el anterior**: si es igual, lo descarta. Por eso el último `1` sí pasa (el anterior era `2`). Es habitual tras `debounceTime` en un buscador.'),
  ('rx-distinctuntilchanged', 'en', 'What does this code print?

```ts
of(1, 1, 2, 2, 1)
  .pipe(distinctUntilChanged())
  .subscribe(console.log);
```', '["`1` and `2`, with no repeats across the whole sequence","`1`, `1`, `2`, `2` and `1`, with no change at all","`2` and `1`, because it always ignores the first value","`1`, `2` and `1`: it only discards consecutive repeats"]'::jsonb, '`distinctUntilChanged` compares each value with **the previous one**: if equal, it discards it. That is why the last `1` passes (the previous was `2`). It is common after `debounceTime` in a search box.'),
  ('rx-debouncetime', 'es', '¿Qué hace `debounceTime(300)` en un campo de búsqueda?', '["Retrasa 300 ms cada valor, pero acaba emitiendo todos los que se escriban","Emite el valor solo cuando pasan 300 ms sin que llegue uno nuevo","Limita la aplicación a un máximo de 300 peticiones por cada minuto","Emite un valor cada 300 ms, aunque el usuario no escriba absolutamente nada"]'::jsonb, '`debounceTime` espera a que el flujo se calme: cada vez que llega un valor reinicia la cuenta, y solo emite el último si pasan 300 ms en silencio. Así no se lanza una petición por cada tecla.'),
  ('rx-debouncetime', 'en', 'What does `debounceTime(300)` do in a search box?', '["It delays each value by 300 ms, but ends up emitting every one that is typed","It emits the value only when 300 ms pass without a new one arriving","It limits the application to a maximum of 300 requests per minute","It emits a value every 300 ms, even if the user types absolutely nothing"]'::jsonb, '`debounceTime` waits for the stream to calm down: each time a value arrives it restarts the count, and only emits the last one if 300 ms pass in silence. That way a request is not fired on every keystroke.'),
  ('rx-take-completes', 'es', '¿Qué imprime este código?

```ts
interval(1000)
  .pipe(take(3))
  .subscribe({
    next: (n) => console.log(n),
    complete: () => console.log(''fin''),
  });
```', '["`0`, `1`, `2` y `fin`, un valor por segundo","`1`, `2`, `3` y `fin`, a partir del primer segundo","`0`, `1` y `2`, pero `fin` no llega a imprimirse nunca","Valores sin fin, porque `take` solo actúa como un filtro más"]'::jsonb, '`interval` emite 0, 1, 2... cada segundo. `take(3)` deja pasar tres valores y **completa el flujo** (y se da de baja del origen). Por eso se imprime `fin`. Es una forma de limitar un `interval` que no termina.'),
  ('rx-take-completes', 'en', 'What does this code print?

```ts
interval(1000)
  .pipe(take(3))
  .subscribe({
    next: (n) => console.log(n),
    complete: () => console.log(''fin''),
  });
```', '["`0`, `1`, `2` and `fin`, one value per second","`1`, `2`, `3` and `fin`, starting from the first second","`0`, `1` and `2`, but `fin` never gets printed","Endless values, because `take` merely acts as one more filter"]'::jsonb, '`interval` emits 0, 1, 2... every second. `take(3)` lets three values through and **completes the stream** (and unsubscribes from the source). That is why `fin` is printed. It is a way to bound a never-ending `interval`.'),
  ('rx-first-vs-take1', 'es', '¿Qué diferencia hay entre `first()` y `take(1)` si el Observable se completa sin emitir ningún valor?', '["`first()` lanza un error `EmptyError`; `take(1)` se completa sin error","Ninguna: los dos se completan en silencio sin emitir nada","`take(1)` lanza un error y `first()` se completa en silencio","Los dos emiten `undefined` y después se completan con normalidad"]'::jsonb, 'Los dos toman el primer valor y se completan. Pero si el origen termina vacío, `first()` falla con un `EmptyError` (a menos que le des un valor por defecto), y `take(1)` simplemente se completa.'),
  ('rx-first-vs-take1', 'en', 'What is the difference between `first()` and `take(1)` if the Observable completes without emitting any value?', '["`first()` throws `EmptyError`; `take(1)` just completes","None: both complete silently without emitting anything","`take(1)` throws an error and `first()` completes silently","Both emit `undefined` and then complete normally"]'::jsonb, 'Both take the first value and complete. But if the source ends empty, `first()` fails with an `EmptyError` (unless you give it a default value), while `take(1)` simply completes.'),
  ('rx-finalize-when', 'es', '¿Cuándo se ejecuta la función de `finalize()`?', '["Solo cuando el Observable se completa correctamente, sin ningún error","Solo cuando ocurre un error, justo antes de pasar al callback `error`","Cada vez que el Observable emite un valor nuevo, igual que `tap`","Al completar, al fallar o al darse de baja de la suscripción"]'::jsonb, '`finalize` se ejecuta **siempre que la suscripción termina**: por `complete`, por `error` o por `unsubscribe`. Es el sitio ideal para apagar un indicador de carga, pase lo que pase con la petición.'),
  ('rx-finalize-when', 'en', 'When does the `finalize()` function run?', '["Only when the Observable completes successfully, with no error at all","Only when an error occurs, just before moving to the `error` callback","Every time the Observable emits a new value, just like `tap`","On completion, on failure or on unsubscribing from the subscription"]'::jsonb, '`finalize` runs **whenever the subscription ends**: by `complete`, by `error` or by `unsubscribe`. It is the ideal place to turn off a loading indicator, whatever happens to the request.'),
  ('rx-catcherror-fallback', 'es', 'Si la petición falla, ¿qué ocurre con este código?

```ts
this.http.get<User[]>(''/api/users'').pipe(
  catchError(() => of([])),
).subscribe((users) => (this.users = users));
```', '["El error llega al `subscribe`, que lo ignora porque no tiene callback `error`","`catchError` lo captura y lo sustituye por una lista vacía, y el flujo termina bien","La petición se repite automáticamente hasta que consigue responder sin errores","La aplicación se detiene, porque `catchError` no puede evitar los errores HTTP"]'::jsonb, '`catchError` intercepta el error y devuelve un Observable alternativo (aquí, `of([])`). El suscriptor recibe una lista vacía en lugar del error y el flujo se completa con normalidad.'),
  ('rx-catcherror-fallback', 'en', 'If the request fails, what happens with this code?

```ts
this.http.get<User[]>(''/api/users'').pipe(
  catchError(() => of([])),
).subscribe((users) => (this.users = users));
```', '["The error reaches `subscribe`, which ignores it because it has no `error` callback","`catchError` catches it and replaces it with an empty list, and the stream ends fine","The request is automatically repeated until it manages to respond without errors","The application stops, because `catchError` cannot prevent HTTP errors"]'::jsonb, '`catchError` intercepts the error and returns an alternative Observable (here, `of([])`). The subscriber receives an empty list instead of the error and the stream completes normally.'),
  ('rx-retry-resubscribe', 'es', '¿Qué hace `retry(3)` cuando el Observable de origen emite un error?', '["Reintenta solo la última emisión del flujo, sin volver a suscribirse al origen","Espera 3 segundos y vuelve a emitir el último valor correcto que hubiera guardado","Se vuelve a suscribir al origen hasta 3 veces antes de propagar el error","Ignora los 3 primeros errores y devuelve siempre un valor por defecto"]'::jsonb, '`retry(n)` se **vuelve a suscribir** al Observable de origen hasta `n` veces. Con `HttpClient`, eso repite la petición. Si sigue fallando, el error se propaga. Para esperar entre reintentos, se usa `retry({ delay })`.'),
  ('rx-retry-resubscribe', 'en', 'What does `retry(3)` do when the source Observable emits an error?', '["It retries only the last emission of the stream, without resubscribing to the source","It waits 3 seconds and re-emits the last correct value it had stored","It resubscribes to the source up to 3 times before propagating the error","It ignores the first 3 errors and always returns a default value"]'::jsonb, '`retry(n)` **resubscribes** to the source Observable up to `n` times. With `HttpClient`, that repeats the request. If it keeps failing, the error propagates. To wait between retries, use `retry({ delay })`.'),
  ('rx-concatmap-order', 'es', 'Guardas los cambios de un formulario con una petición por cada cambio y necesitas que se ejecuten una tras otra, en orden. ¿Qué operador de aplanado usas?', '["`switchMap`: cancela la petición anterior cuando llega una nueva","`concatMap`: las encola y las ejecuta una a una respetando el orden","`mergeMap`: las lanza todas a la vez, sin esperar a que termine ninguna","`exhaustMap`: ignora las nuevas mientras haya una petición en curso"]'::jsonb, '`concatMap` mantiene una cola: no empieza la siguiente petición hasta que termina la anterior, y respeta el orden. `switchMap` cancelaría guardados, `mergeMap` los desordenaría y `exhaustMap` perdería cambios.'),
  ('rx-concatmap-order', 'en', 'You save a form''s changes with one request per change and need them to run one after another, in order. Which flattening operator do you use?', '["`switchMap`: it cancels the previous request when a new one arrives","`concatMap`: it queues them and runs them one by one respecting the order","`mergeMap`: it fires them all at once, without waiting for any to finish","`exhaustMap`: it ignores new ones while a request is in progress"]'::jsonb, '`concatMap` keeps a queue: it does not start the next request until the previous one ends, and it respects the order. `switchMap` would cancel saves, `mergeMap` would reorder them and `exhaustMap` would lose changes.'),
  ('rx-exhaustmap-submit', 'es', 'El usuario pulsa varias veces seguidas el botón "Enviar". ¿Qué operador evita lanzar peticiones nuevas mientras la primera sigue en curso?', '["`switchMap`: cancelaría la primera y lanzaría la nueva, justo lo contrario","`concatMap`: las encolaría todas y se enviarían una detrás de otra","`mergeMap`: las enviaría todas a la vez, duplicando los datos en el servidor","`exhaustMap`: ignora los clics mientras la petición en curso no termine"]'::jsonb, '`exhaustMap` ignora los valores nuevos mientras su Observable interno siga activo. Es ideal para botones de envío o login: evita dobles envíos sin deshabilitar el botón a mano.'),
  ('rx-exhaustmap-submit', 'en', 'The user presses the "Send" button several times in a row. Which operator avoids firing new requests while the first is still in progress?', '["`switchMap`: it would cancel the first and fire the new one, just the opposite","`concatMap`: it would queue them all and send them one after another","`mergeMap`: it would send them all at once, duplicating data on the server","`exhaustMap`: it ignores clicks while the request in progress has not finished"]'::jsonb, '`exhaustMap` ignores new values while its inner Observable is still active. It is ideal for submit or login buttons: it prevents double submissions without disabling the button by hand.'),
  ('rx-mergemap-parallel', 'es', 'Necesitas enviar varias peticiones a la vez, sin cancelar ninguna ni esperar al orden de las respuestas. ¿Qué operador de aplanado encaja?', '["`mergeMap`: ejecuta todas en paralelo y emite cada respuesta cuando llega","`switchMap`: cancelaría todas menos la última petición que se hubiera lanzado","`concatMap`: las ejecutaría una a una, esperando a que termine cada anterior","`exhaustMap`: descartaría las peticiones nuevas mientras alguna siga pendiente"]'::jsonb, '`mergeMap` se suscribe a cada Observable interno sin cancelar los anteriores, así que hay paralelismo. Las respuestas salen en el orden en que llegan, que puede no ser el de envío.'),
  ('rx-mergemap-parallel', 'en', 'You need to send several requests at once, without cancelling any or waiting for response order. Which flattening operator fits?', '["`mergeMap`: it runs all in parallel and emits each response as it arrives","`switchMap`: it would cancel all but the last request that was fired","`concatMap`: it would run them one by one, waiting for each previous one to end","`exhaustMap`: it would discard new requests while any is still pending"]'::jsonb, '`mergeMap` subscribes to every inner Observable without cancelling the previous ones, so there is parallelism. Responses come out in the order they arrive, which may differ from the order they were sent.'),
  ('rx-combinelatest-sync', 'es', '¿Qué imprime este código?

```ts
const a$ = of(1, 2);
const b$ = of(''x'');

combineLatest([a$, b$]).subscribe(console.log);
```', '["Solo `[2, ''x'']`: cuando `b$` emite, `a$` ya había emitido el 1 y el 2","`[1, ''x'']` y `[2, ''x'']`, una combinación por cada valor de `a$` que existe","`[1, ''x'']` únicamente, porque `a$` se completa antes de que emita `b$`","Nada, porque `combineLatest` solo funciona con `Subject` y no con `of`"]'::jsonb, '`combineLatest` emite cuando **todos** han emitido al menos una vez, usando el último valor de cada uno. `a$` emite 1 y 2 de forma síncrona antes de que `b$` emita; cuando `b$` emite `x`, el último de `a$` es 2: sale `[2, ''x'']`.'),
  ('rx-combinelatest-sync', 'en', 'What does this code print?

```ts
const a$ = of(1, 2);
const b$ = of(''x'');

combineLatest([a$, b$]).subscribe(console.log);
```', '["Only `[2, ''x'']`: when `b$` emits, `a$` had already emitted 1 and 2","`[1, ''x'']` and `[2, ''x'']`, one combination for each value of `a$` that exists","`[1, ''x'']` only, because `a$` completes before `b$` emits","Nothing, because `combineLatest` only works with `Subject` and not with `of`"]'::jsonb, '`combineLatest` emits when **all** have emitted at least once, using the latest value of each. `a$` emits 1 and 2 synchronously before `b$` emits; when `b$` emits `x`, the latest of `a$` is 2: the output is `[2, ''x'']`.'),
  ('rx-forkjoin-parallel', 'es', 'Necesitas cargar a la vez dos recursos HTTP y continuar solo cuando ambos hayan terminado. ¿Qué operador de creación usas?', '["`merge`: emite cada respuesta según llegue, sin esperar a las demás","`concat`: las ejecuta una detrás de otra, sin ningún paralelismo entre ellas","`forkJoin`: espera a que completen y emite sus últimos valores juntos","`combineLatest`: emite una sola vez, cuando todos se han completado"]'::jsonb, '`forkJoin` lanza todos los Observables en paralelo y, cuando **todos se completan**, emite un único array con el último valor de cada uno (como `Promise.all`). Con peticiones HTTP es el caso típico. `combineLatest` no espera a que completen.'),
  ('rx-forkjoin-parallel', 'en', 'You need to load two HTTP resources at once and continue only when both have finished. Which creation operator do you use?', '["`merge`: it emits each response as it arrives, without waiting for the others","`concat`: it runs them one after another, with no parallelism between them","`forkJoin`: it waits for them to complete and emits their last values together","`combineLatest`: it emits a single time, once all of them have completed"]'::jsonb, '`forkJoin` fires all Observables in parallel and, when **all complete**, emits a single array with the last value of each (like `Promise.all`). With HTTP requests it is the typical case. `combineLatest` does not wait for completion.'),
  ('rx-withlatestfrom', 'es', '¿Qué diferencia hay entre `combineLatest` y `withLatestFrom`?', '["Ninguna: son alias del mismo operador desde la versión 7 de RxJS","`withLatestFrom` emite cuando emite cualquiera de las dos fuentes; `combineLatest`, solo con la principal","`withLatestFrom` solo emite cuando emite la fuente principal, con el último valor de la otra","`combineLatest` espera a que todo se complete; `withLatestFrom` emite sin esperar a nadie"]'::jsonb, '`combineLatest` emite cada vez que **cualquiera** de las fuentes emite. `withLatestFrom` solo emite cuando lo hace **la fuente principal**, y le añade el último valor de la otra, sin que los cambios de esa otra provoquen emisiones.'),
  ('rx-withlatestfrom', 'en', 'What is the difference between `combineLatest` and `withLatestFrom`?', '["None: they are aliases of the same operator since RxJS version 7","`withLatestFrom` emits when either source emits; `combineLatest`, only with the main one","`withLatestFrom` only emits when the main source emits, with the latest value of the other","`combineLatest` waits for everything to complete; `withLatestFrom` emits without waiting for anyone"]'::jsonb, '`combineLatest` emits every time **any** of the sources emits. `withLatestFrom` only emits when **the main source** does, adding the latest value of the other, without that other''s changes triggering emissions.'),
  ('rx-merge-vs-concat', 'es', '¿Qué imprime este código con `merge`, y qué imprimiría con `concat`?

```ts
const a$ = interval(100).pipe(take(2), map((n) => ''A'' + n));
const b$ = interval(100).pipe(take(2), map((n) => ''B'' + n));

merge(a$, b$).subscribe(console.log);
```', '["`A0 A1 B0 B1` con `merge` y `A0 B0 A1 B1` con `concat`","`A0 B0 A1 B1` con `merge` y `A0 A1 B0 B1` con `concat`","Los dos imprimen `A0 A1 B0 B1`, porque ambos conservan el orden de los argumentos","Los dos imprimen `A0 B0 A1 B1`, porque ambos mezclan las emisiones de las fuentes"]'::jsonb, '`merge` se suscribe a todas a la vez y **mezcla** sus emisiones según llegan (`A0 B0 A1 B1`). `concat` las ejecuta **una detrás de otra**: no empieza `b$` hasta que `a$` se completa (`A0 A1 B0 B1`).'),
  ('rx-merge-vs-concat', 'en', 'What does this code print with `merge`, and what would it print with `concat`?

```ts
const a$ = interval(100).pipe(take(2), map((n) => ''A'' + n));
const b$ = interval(100).pipe(take(2), map((n) => ''B'' + n));

merge(a$, b$).subscribe(console.log);
```', '["`A0 A1 B0 B1` with `merge` and `A0 B0 A1 B1` with `concat`","`A0 B0 A1 B1` with `merge` and `A0 A1 B0 B1` with `concat`","Both print `A0 A1 B0 B1`, because both keep the order of the arguments","Both print `A0 B0 A1 B1`, because both interleave the emissions of the sources"]'::jsonb, '`merge` subscribes to all at once and **interleaves** their emissions as they arrive (`A0 B0 A1 B1`). `concat` runs them **one after another**: it does not start `b$` until `a$` completes (`A0 A1 B0 B1`).'),
  ('rx-nested-subscribe-antipattern', 'es', '¿Qué problema tiene este código y cómo se mejora?

```ts
this.route.params.subscribe((params) => {
  this.http.get(''/api/items/'' + params[''id'']).subscribe((item) => {
    this.item = item;
  });
});
```', '["Ninguno: anidar suscripciones es la forma recomendada de encadenar peticiones","Que `params` no es un Observable y siempre hay que leerlo con `snapshot`","Que `subscribe` no admite funciones flecha cuando está dentro de otro `subscribe`","Anida suscripciones: es mejor un solo flujo con `switchMap` y una única suscripción"]'::jsonb, 'Un `subscribe` dentro de otro es un antipatrón: no se cancela la petición anterior y hay dos suscripciones que gestionar. Mejor un solo flujo: `route.params.pipe(switchMap(...))` con una única suscripción (o, en Angular moderno, un `input()` y `httpResource`).'),
  ('rx-nested-subscribe-antipattern', 'en', 'What is wrong with this code and how is it improved?

```ts
this.route.params.subscribe((params) => {
  this.http.get(''/api/items/'' + params[''id'']).subscribe((item) => {
    this.item = item;
  });
});
```', '["Nothing: nesting subscriptions is the recommended way to chain requests","That `params` is not an Observable and must always be read with `snapshot`","That `subscribe` does not accept arrow functions when it is inside another `subscribe`","It nests subscriptions: a single stream with `switchMap` and one subscription is better"]'::jsonb, 'A `subscribe` inside another is an anti-pattern: the previous request is not cancelled and there are two subscriptions to manage. Better a single stream: `route.params.pipe(switchMap(...))` with one subscription (or, in modern Angular, an `input()` and `httpResource`).'),
  ('rx-observable-to-promise', 'es', 'En RxJS 7, ¿cómo conviertes un Observable en una `Promise` para usar `await`?', '["Con `toPromise()`, la forma recomendada en las versiones actuales de RxJS","Con `from(obs$)`, que devuelve directamente una `Promise` lista para esperar","Con `firstValueFrom(obs$)` o `lastValueFrom(obs$)`, según el valor que quieras","No se puede: un Observable nunca puede convertirse en una `Promise`"]'::jsonb, '`toPromise()` está **obsoleto** desde RxJS 7. Se usa `firstValueFrom` (el primer valor) o `lastValueFrom` (el último, al completarse). Ojo: `lastValueFrom` en un flujo que no termina nunca se resuelve.'),
  ('rx-observable-to-promise', 'en', 'In RxJS 7, how do you turn an Observable into a `Promise` to use `await`?', '["With `toPromise()`, the recommended way in current RxJS versions","With `from(obs$)`, which directly returns a `Promise` ready to await","With `firstValueFrom(obs$)` or `lastValueFrom(obs$)`","You cannot: an Observable can never be converted into a `Promise`"]'::jsonb, '`toPromise()` has been **deprecated** since RxJS 7. Use `firstValueFrom` (the first value) or `lastValueFrom` (the last one, on completion). Careful: `lastValueFrom` on a stream that never ends never resolves.'),
  ('rx-tosignal', 'es', '¿Qué hace `toSignal(obs$)` en un componente?', '["Se suscribe, expone el último valor como signal y se cancela al destruirse el componente","Convierte un signal en un Observable que emite un valor cada vez que el signal cambia","Evita que el Observable emita más de un valor, igual que haría el operador `take(1)`","Hace que el Observable se ejecute solo en el servidor durante el renderizado inicial"]'::jsonb, '`toSignal` se suscribe al Observable, guarda su último valor en un signal (puedes leerlo con `()` en la plantilla) y **se da de baja solo** al destruirse el contexto. Hasta la primera emisión vale `undefined`, salvo que pases `initialValue`.'),
  ('rx-tosignal', 'en', 'What does `toSignal(obs$)` do in a component?', '["It subscribes, exposes the latest value as a signal and cancels when the component is destroyed","It turns a signal into an Observable that emits a value every time the signal changes","It prevents the Observable from emitting more than one value, like the `take(1)` operator would","It makes the Observable run only on the server during the initial rendering"]'::jsonb, '`toSignal` subscribes to the Observable, stores its latest value in a signal (you can read it with `()` in the template) and **unsubscribes by itself** when the context is destroyed. Until the first emission it is `undefined`, unless you pass `initialValue`.'),
  ('rx-toobservable-async', 'es', '¿Cuándo emite `toObservable(signal)` un cambio del signal?', '["De forma síncrona, en la misma línea en que se llama a `set()` sobre el signal","Solo cuando se destruye el componente que contiene el signal original","Cada segundo, leyendo el valor actual del signal desde un temporizador interno","De forma asíncrona, a través de un `effect`, no inmediatamente tras `set()`"]'::jsonb, '`toObservable` usa un `effect` por debajo, así que la emisión es **asíncrona**: se produce cuando el `effect` se ejecuta, no justo tras `set()`. Si cambias el signal varias veces seguidas, puede emitirse solo el valor más reciente.'),
  ('rx-toobservable-async', 'en', 'When does `toObservable(signal)` emit a change of the signal?', '["Synchronously, on the very line where `set()` is called on the signal","Only when the component that holds the original signal is destroyed","Every second, reading the signal''s current value from an internal timer","Asynchronously, through an `effect`, not immediately after `set()`"]'::jsonb, '`toObservable` uses an `effect` under the hood, so emission is **asynchronous**: it happens when the `effect` runs, not right after `set()`. If you change the signal several times in a row, only the most recent value may be emitted.')
on conflict (question_id, lang) do update set
    prompt = excluded.prompt,
    options = excluded.options,
    explanation = excluded.explanation;
