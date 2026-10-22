-- Generado por scripts/questions-to-sql.mjs. Se puede ejecutar varias veces: no duplica nada.
-- Las preguntas nuevas entran como draft. Las que ya existen se actualizan, y su estado se respeta.

insert into public.questions (id, tech, topic, difficulty, type, correct_index, status, ref_version) values
  ('js-var-let-closure', 'javascript', 'scope', 'medium', 'test', 1, 'draft', 'es2022'),
  ('js-event-loop-order', 'javascript', 'async', 'hard', 'test', 2, 'draft', 'es2022'),
  ('js-async-await-order', 'javascript', 'async', 'hard', 'test', 0, 'draft', 'es2022'),
  ('js-loose-equality', 'javascript', 'types', 'medium', 'test', 3, 'draft', 'es2022'),
  ('js-typeof-null', 'javascript', 'types', 'hard', 'test', 1, 'draft', 'es2022'),
  ('js-nan', 'javascript', 'types', 'hard', 'test', 2, 'draft', 'es2022'),
  ('js-truthy', 'javascript', 'types', 'medium', 'test', 3, 'draft', 'es2022'),
  ('js-float-precision', 'javascript', 'types', 'medium', 'test', 1, 'draft', 'es2022'),
  ('js-coercion-plus-minus', 'javascript', 'types', 'medium', 'test', 2, 'draft', 'es2022'),
  ('js-sort-default', 'javascript', 'arrays', 'hard', 'test', 0, 'draft', 'es2022'),
  ('js-map-parseint', 'javascript', 'arrays', 'hard', 'test', 3, 'draft', 'es2022'),
  ('js-spread-shallow', 'javascript', 'objects', 'medium', 'test', 1, 'draft', 'es2022'),
  ('js-array-reference', 'javascript', 'objects', 'easy', 'test', 2, 'draft', 'es2022'),
  ('js-set-dedupe', 'javascript', 'arrays', 'easy', 'test', 1, 'draft', 'es2022'),
  ('js-rest-destructuring', 'javascript', 'objects', 'medium', 'test', 3, 'draft', 'es2022'),
  ('js-closure-counter', 'javascript', 'scope', 'medium', 'test', 0, 'draft', 'es2022'),
  ('js-date-utc-vs-local', 'javascript', 'dates', 'hard', 'test', 2, 'draft', 'es2022'),
  ('js-optional-chaining', 'javascript', 'types', 'easy', 'test', 1, 'draft', 'es2022'),
  ('js-promise-all-vs-allsettled', 'javascript', 'async', 'medium', 'test', 2, 'draft', 'es2022'),
  ('js-const-mutation', 'javascript', 'scope', 'medium', 'test', 1, 'draft', 'es2022'),
  ('ts-as-vs-nonnull', 'typescript', 'types', 'medium', 'test', 0, 'draft', 'typescript@5'),
  ('ts-unknown-vs-any', 'typescript', 'types', 'medium', 'test', 2, 'draft', 'typescript@5'),
  ('ts-type-vs-value', 'typescript', 'types', 'medium', 'test', 3, 'draft', 'typescript@5'),
  ('ts-union-literal', 'typescript', 'types', 'easy', 'test', 1, 'draft', 'typescript@5'),
  ('ts-record-utility', 'typescript', 'types', 'easy', 'test', 0, 'draft', 'typescript@5'),
  ('ts-interface-vs-type', 'typescript', 'types', 'medium', 'test', 2, 'draft', 'typescript@5'),
  ('ts-narrowing', 'typescript', 'types', 'medium', 'test', 1, 'draft', 'typescript@5'),
  ('ts-generics', 'typescript', 'generics', 'medium', 'test', 3, 'draft', 'typescript@5'),
  ('ts-utility-partial-pick', 'typescript', 'types', 'medium', 'test', 0, 'draft', 'typescript@5'),
  ('ts-types-erased', 'typescript', 'types', 'hard', 'test', 1, 'draft', 'typescript@5'),
  ('ts-readonly', 'typescript', 'types', 'easy', 'test', 2, 'draft', 'typescript@5')
on conflict (id) do update set
    tech = excluded.tech,
    topic = excluded.topic,
    difficulty = excluded.difficulty,
    correct_index = excluded.correct_index,
    ref_version = excluded.ref_version;
  
insert into public.question_translations (question_id, lang, prompt, options, explanation) values
  ('js-var-let-closure', 'es', '¿Qué imprime este código?

```ts
for (var i = 0; i < 3; i++) {
  setTimeout(() => console.log(i), 0);
}
```', '["`0`, `1` y `2`, un valor por cada vuelta del bucle que se ejecuta","`3`, `3` y `3`: `var` comparte una sola variable entre todas las vueltas","`undefined` tres veces, porque `i` ya no existe cuando se ejecutan los timeouts","Nada, porque `setTimeout` con 0 milisegundos nunca llega a ejecutarse"]'::jsonb, '`var` tiene ámbito de **función**: hay una única `i`, y cuando los timeouts se ejecutan el bucle ya ha terminado y `i` vale 3. Con `let`, cada vuelta crea su propia `i` (ámbito de bloque) y saldría `0`, `1`, `2`.'),
  ('js-var-let-closure', 'en', 'What does this code print?

```ts
for (var i = 0; i < 3; i++) {
  setTimeout(() => console.log(i), 0);
}
```', '["`0`, `1` and `2`, one value for each loop iteration that runs","`3`, `3` and `3`: `var` shares a single variable across all iterations","`undefined` three times, because `i` no longer exists when the timeouts run","Nothing, because `setTimeout` with 0 milliseconds never gets to run"]'::jsonb, '`var` is **function**-scoped: there is a single `i`, and when the timeouts run the loop has finished and `i` is 3. With `let`, each iteration creates its own `i` (block scope) and it would print `0`, `1`, `2`.'),
  ('js-event-loop-order', 'es', '¿En qué orden se imprimen los números?

```ts
console.log(''1'');
setTimeout(() => console.log(''4''), 0);
Promise.resolve().then(() => console.log(''3''));
console.log(''2'');
```', '["`1`, `4`, `3`, `2`: los temporizadores se ejecutan antes que las promesas","`1`, `3`, `2`, `4`: las promesas se ejecutan en cuanto se crean","`1`, `2`, `3`, `4`: primero lo síncrono, luego las promesas, luego los temporizadores","`1`, `2`, `4`, `3`: lo síncrono, luego los temporizadores y al final las promesas"]'::jsonb, 'Primero el código **síncrono** (`1`, `2`). Después la cola de **microtareas** (callbacks de promesas: `3`). Y por último la cola de **macrotareas** (`setTimeout`: `4`), aunque el retardo sea 0. Es el orden del *event loop*.'),
  ('js-event-loop-order', 'en', 'In what order are the numbers printed?

```ts
console.log(''1'');
setTimeout(() => console.log(''4''), 0);
Promise.resolve().then(() => console.log(''3''));
console.log(''2'');
```', '["`1`, `4`, `3`, `2`: timers run before promises","`1`, `3`, `2`, `4`: promises run as soon as they are created","`1`, `2`, `3`, `4`: first synchronous code, then promises, then timers","`1`, `2`, `4`, `3`: synchronous code, then timers and finally promises"]'::jsonb, 'First the **synchronous** code (`1`, `2`). Then the **microtask** queue (promise callbacks: `3`). And finally the **macrotask** queue (`setTimeout`: `4`), even with a 0 delay. That is the *event loop* order.'),
  ('js-async-await-order', 'es', '¿Qué imprime este código?

```ts
async function f() {
  console.log(''a'');
  await null;
  console.log(''b'');
}

f();
console.log(''c'');
```', '["`a`, `c` y `b`: tras el `await`, la función se reanuda más tarde","`a`, `b` y `c`: `await null` no espera nada, así que continúa a la vez","`c`, `a` y `b`: las funciones `async` siempre se ejecutan después de lo síncrono","`a` y `c`, porque lo que va tras el `await` solo se ejecuta con una `Promise` real"]'::jsonb, 'Una función `async` se ejecuta **de forma síncrona hasta el primer `await`** (`a`). Al llegar al `await`, cede el control y el resto (`b`) se reanuda como microtarea, después del código síncrono que sigue (`c`).'),
  ('js-async-await-order', 'en', 'What does this code print?

```ts
async function f() {
  console.log(''a'');
  await null;
  console.log(''b'');
}

f();
console.log(''c'');
```', '["`a`, `c` and `b`: after the `await`, the function resumes later","`a`, `b` and `c`: `await null` waits for nothing, so it continues at once","`c`, `a` and `b`: `async` functions always run after synchronous code","`a` and `c`, because what follows the `await` only runs with a real `Promise`"]'::jsonb, 'An `async` function runs **synchronously up to the first `await`** (`a`). On reaching the `await`, it yields control and the rest (`b`) resumes as a microtask, after the synchronous code that follows (`c`).'),
  ('js-loose-equality', 'es', '¿Cuál de estas comparaciones da `true`?', '["`0 === ''''`: el número y la cadena vacía son estrictamente iguales","`null === undefined`: las dos significan \"sin valor\", así que coinciden","`NaN === NaN`: un valor siempre es igual a sí mismo en JavaScript","`null == undefined`: la igualdad laxa los trata como equivalentes"]'::jsonb, '`null == undefined` es `true` (la igualdad laxa `==` convierte tipos), pero `null === undefined` es `false`. `0 == ''''` también es `true`, pero con `===` no. `NaN === NaN` es `false`: se usa `Number.isNaN`. Por eso se recomienda `===`.'),
  ('js-loose-equality', 'en', 'Which of these comparisons gives `true`?', '["`0 === ''''`: the number and the empty string are strictly equal","`null === undefined`: both mean \"no value\", so they match","`NaN === NaN`: a value is always equal to itself in JavaScript","`null == undefined`: loose equality treats them as equivalent"]'::jsonb, '`null == undefined` is `true` (loose equality `==` converts types), but `null === undefined` is `false`. `0 == ''''` is also `true`, but not with `===`. `NaN === NaN` is `false`: use `Number.isNaN`. That is why `===` is recommended.'),
  ('js-typeof-null', 'es', '¿Qué devuelve `typeof null`?', '["`\"null\"`, porque `null` es un tipo primitivo propio de JavaScript","`\"object\"`, un error histórico que se mantiene por compatibilidad","`\"undefined\"`, porque `null` significa que no hay ningún valor definido","`\"boolean\"`, porque `null` se comporta como `false` en las condiciones"]'::jsonb, '`typeof null` es `"object"`: un fallo de las primeras versiones de JavaScript que no se corrigió para no romper webs existentes. Para comprobar `null` se usa `valor === null`.'),
  ('js-typeof-null', 'en', 'What does `typeof null` return?', '["`\"null\"`, because `null` is a primitive type of its own in JavaScript","`\"object\"`, a historical bug of the language kept for compatibility","`\"undefined\"`, because `null` means no value is defined","`\"boolean\"`, because `null` behaves like `false` in conditions"]'::jsonb, '`typeof null` is `"object"`: a bug from the early versions of JavaScript that was not fixed so as not to break existing sites. To check for `null` you use `value === null`.'),
  ('js-nan', 'es', '¿Cómo se comprueba correctamente si un valor es `NaN`?', '["`valor === NaN`, igual que con cualquier otro valor","`valor == NaN`, que es más permisivo con los tipos","`Number.isNaN(valor)`: `NaN` no es igual ni a sí mismo","`typeof valor === ''NaN''`, porque tiene un tipo propio"]'::jsonb, '`NaN` es el único valor de JavaScript que **no es igual a sí mismo** (`NaN === NaN` es `false`). Se comprueba con `Number.isNaN(valor)`. Su `typeof` es `"number"`.'),
  ('js-nan', 'en', 'How do you correctly check whether a value is `NaN`?', '["`value === NaN`, just like with any other value","`value == NaN`, which is more permissive with types","`Number.isNaN(value)`: `NaN` is not equal to itself","`typeof value === ''NaN''`, because it has a type of its own"]'::jsonb, '`NaN` is the only JavaScript value that is **not equal to itself** (`NaN === NaN` is `false`). It is checked with `Number.isNaN(value)`. Its `typeof` is `"number"`.'),
  ('js-truthy', 'es', '¿Cuál de estos valores es *truthy* (se comporta como verdadero en un `if`)?', '["`0`, porque es un número y los números siempre son verdaderos","`''''`, porque una cadena existe aunque no tenga ningún carácter","`NaN`, porque es un valor numérico válido dentro del lenguaje","`[]`: un array vacío es un objeto, y los objetos son verdaderos"]'::jsonb, 'Los valores *falsy* son `false`, `0`, `-0`, `0n`, `''''`, `null`, `undefined` y `NaN`. Todo lo demás es *truthy*, incluidos `[]`, `{}` y `''0''`. Por eso `if (lista)` no sirve para comprobar si una lista está vacía: hay que mirar `lista.length`.'),
  ('js-truthy', 'en', 'Which of these values is *truthy* (behaves as true in an `if`)?', '["`0`, because it is a number and numbers are always true","`''''`, because a string exists even if it has no characters","`NaN`, because it is a valid numeric value within the language","`[]`, because empty arrays are objects and objects are true"]'::jsonb, 'The *falsy* values are `false`, `0`, `-0`, `0n`, `''''`, `null`, `undefined` and `NaN`. Everything else is *truthy*, including `[]`, `{}` and `''0''`. That is why `if (list)` does not tell whether a list is empty: you must check `list.length`.'),
  ('js-float-precision', 'es', '¿Qué da `0.1 + 0.2 === 0.3` en JavaScript?', '["`true`, porque la suma de esos decimales es exactamente 0,3","`false`, por la imprecisión de los números en coma flotante","Un error, porque no se pueden sumar números con decimales","`undefined`, porque la comparación de decimales no está definida"]'::jsonb, 'Los números de JavaScript son *floats* de 64 bits y `0.1 + 0.2` da `0.30000000000000004`. Para comparar decimales se usa una tolerancia, o se trabaja con enteros (por ejemplo, céntimos en vez de euros).'),
  ('js-float-precision', 'en', 'What does `0.1 + 0.2 === 0.3` give in JavaScript?', '["`true`, because the sum of those decimals is exactly 0.3","`false`, due to the imprecision of floating-point numbers","An error, because numbers with decimals cannot be added","`undefined`, because comparing decimals is not defined"]'::jsonb, 'JavaScript numbers are 64-bit *floats* and `0.1 + 0.2` gives `0.30000000000000004`. To compare decimals you use a tolerance, or work with integers (for example, cents instead of euros).'),
  ('js-coercion-plus-minus', 'es', '¿Qué valen `''5'' + 3` y `''5'' - 3`?', '["`8` y `2`, porque JavaScript convierte siempre las cadenas a números","`''53''` y `''53''`, porque con una cadena todo se concatena como texto","`''53''` y `2`: `+` concatena si hay una cadena; `-` convierte a número","Un error en las dos operaciones, porque no se mezclan cadenas y números"]'::jsonb, 'Con una cadena, `+` **concatena** (`''53''`). `-` solo existe para números, así que convierte la cadena (`5 - 3 = 2`). Es *coerción* implícita de tipos, fuente de muchos errores: convierte los valores a propósito (`Number(x)`).'),
  ('js-coercion-plus-minus', 'en', 'What are `''5'' + 3` and `''5'' - 3`?', '["`8` and `2`, because JavaScript always converts strings to numbers","`''53''` and `''53''`, because with a string everything concatenates as text","`''53''` and `2`: `+` concatenates with a string; `-` converts","An error in both operations, because strings and numbers are not mixed"]'::jsonb, 'With a string, `+` **concatenates** (`''53''`). `-` only exists for numbers, so it converts the string (`5 - 3 = 2`). It is implicit type *coercion*, the source of many bugs: convert values on purpose (`Number(x)`).'),
  ('js-sort-default', 'es', '¿Qué devuelve `[10, 9, 1].sort()`?', '["`[1, 10, 9]`: sin comparador ordena como cadenas de texto","`[1, 9, 10]`: ordena los números de menor a mayor por defecto","`[10, 9, 1]`: sin comparador deja el array en el orden original","`[10, 9, 1]` ordenado de mayor a menor, porque es lo que hace `sort`"]'::jsonb, 'Sin función comparadora, `sort()` convierte los elementos a **texto** y los ordena alfabéticamente: `"1" < "10" < "9"`. Para números hay que pasar un comparador: `sort((a, b) => a - b)`. Además, `sort` **modifica** el array original.'),
  ('js-sort-default', 'en', 'What does `[10, 9, 1].sort()` return?', '["`[1, 10, 9]`: without a comparator it sorts as text strings","`[1, 9, 10]`: it sorts numbers from smallest to largest by default","`[10, 9, 1]`: without a comparator it leaves the array in its original order","`[10, 9, 1]` sorted from largest to smallest, because that is what `sort` does"]'::jsonb, 'Without a comparator function, `sort()` converts the elements to **text** and sorts them alphabetically: `"1" < "10" < "9"`. For numbers you must pass a comparator: `sort((a, b) => a - b)`. Also, `sort` **mutates** the original array.'),
  ('js-map-parseint', 'es', '¿Qué devuelve este código?

```ts
[''1'', ''2'', ''3''].map(parseInt);
```', '["`[1, 2, 3]`, que es el resultado que se espera de convertir cada texto","`[''1'', ''2'', ''3'']`, porque `parseInt` no cambia el tipo dentro de `map`","Un error, porque `parseInt` no se puede pasar directamente a `map`","`[1, NaN, NaN]`: `map` pasa el índice, que `parseInt` usa como base"]'::jsonb, '`map` llama a la función con **tres argumentos** (valor, índice, array). `parseInt(valor, base)` recibe el índice como base: `parseInt(''2'', 1)` y `parseInt(''3'', 2)` dan `NaN`. La forma segura es `map(Number)` o `map((s) => parseInt(s, 10))`.'),
  ('js-map-parseint', 'en', 'What does this code return?

```ts
[''1'', ''2'', ''3''].map(parseInt);
```', '["`[1, 2, 3]`, which is the expected result of converting each text","`[''1'', ''2'', ''3'']`, because `parseInt` does not change the type inside `map`","An error, because `parseInt` cannot be passed directly to `map`","`[1, NaN, NaN]`: `map` also passes the index, which `parseInt` uses as the radix"]'::jsonb, '`map` calls the function with **three arguments** (value, index, array). `parseInt(value, radix)` receives the index as radix: `parseInt(''2'', 1)` and `parseInt(''3'', 2)` give `NaN`. The safe way is `map(Number)` or `map((s) => parseInt(s, 10))`.'),
  ('js-spread-shallow', 'es', '¿Qué valor tiene `p.b.c` después de ejecutar este código?

```ts
const p = { a: 1, b: { c: 2 } };
const q = { ...p };
q.b.c = 99;
```', '["`2`, porque `q` es una copia completa e independiente de `p`","`99`: el spread copia el primer nivel y `b` es el mismo objeto","`undefined`, porque el spread elimina las propiedades anidadas","Un error, porque no se puede modificar la copia de un objeto"]'::jsonb, 'El operador spread hace una copia **superficial** (*shallow*): copia las propiedades de primer nivel, pero los objetos anidados se comparten por referencia. Para una copia profunda se usa `structuredClone(p)`.'),
  ('js-spread-shallow', 'en', 'What value does `p.b.c` have after running this code?

```ts
const p = { a: 1, b: { c: 2 } };
const q = { ...p };
q.b.c = 99;
```', '["`2`, because `q` is a full, independent copy of `p`","`99`: spread copies the first level, and `b` is the same object","`undefined`, because spread removes nested properties","An error, because a copy of an object cannot be modified"]'::jsonb, 'The spread operator makes a **shallow** copy: it copies first-level properties, but nested objects are shared by reference. For a deep copy use `structuredClone(p)`.'),
  ('js-array-reference', 'es', '¿Cuál es el contenido de `a` después de este código?

```ts
const a = [1, 2];
const b = a;
b.push(3);
```', '["`[1, 2]`, porque `b` es una copia y no afecta al original","`[1, 2, 3, 3]`, porque `push` se aplica a las dos variables","`[1, 2, 3]`: `b` apunta al mismo array que `a`","Un error, porque `const` no permite modificar el contenido"]'::jsonb, 'Los arrays y objetos se asignan **por referencia**: `b = a` no copia, apunta al mismo array. `const` impide **reasignar** la variable, no modificar el contenido. Para copiar, `[...a]` o `a.slice()`.'),
  ('js-array-reference', 'en', 'What are the contents of `a` after this code?

```ts
const a = [1, 2];
const b = a;
b.push(3);
```', '["`[1, 2]`, because `b` is a copy and does not affect the original","`[1, 2, 3, 3]`, because `push` applies to both variables","`[1, 2, 3]`: `b` points to the same array as `a`","An error, because `const` does not allow modifying the contents"]'::jsonb, 'Arrays and objects are assigned **by reference**: `b = a` does not copy, it points to the same array. `const` prevents **reassigning** the variable, not modifying the contents. To copy, `[...a]` or `a.slice()`.'),
  ('js-set-dedupe', 'es', '¿Qué ventaja tiene un `Set` para guardar valores únicos?', '["Guarda los valores ordenados de menor a mayor de forma automática","Descarta repetidos y comprueba si existe un valor sin recorrer la lista","Permite guardar pares de clave y valor, igual que un objeto normal","Es más rápido que un array para recorrer todos sus elementos uno a uno"]'::jsonb, 'Un `Set` no admite duplicados (`[...new Set([1, 1, 2])]` es `[1, 2]`) y `has(valor)` es muy rápido (no recorre todos los elementos, como hace `array.includes`). Por eso se usa para "¿ya lo vi?", como en el cálculo de la racha.'),
  ('js-set-dedupe', 'en', 'What advantage does a `Set` have for storing unique values?', '["It keeps values sorted from smallest to largest automatically","It discards duplicates and checks existence without walking the list","It lets you store key and value pairs, just like a normal object","It is faster than an array for walking through all its elements one by one"]'::jsonb, 'A `Set` does not allow duplicates (`[...new Set([1, 1, 2])]` is `[1, 2]`) and `has(value)` is very fast (it does not walk all elements, as `array.includes` does). That is why it is used for "have I seen it?", as in the streak calculation.'),
  ('js-rest-destructuring', 'es', '¿Qué valen `x` y `resto` después de este código?

```ts
const o = { x: 1, y: 2, z: 3 };
const { x, ...resto } = o;
```', '["`x` vale `1` y `resto` vale `{ x: 1, y: 2, z: 3 }`, con todas las propiedades","`x` vale `1` y `resto` vale `[2, 3]`, un array con los valores restantes","`x` vale `undefined`, porque el operador `...` se lleva todas las propiedades","`x` vale `1` y `resto` vale `{ y: 2, z: 3 }`, el objeto sin `x`"]'::jsonb, 'Al desestructurar, `...resto` recoge **el resto** de propiedades en un objeto nuevo, sin las que ya extrajiste. Es la forma de "quitar" propiedades de un objeto sin modificarlo. Con arrays, `...resto` recoge los elementos restantes en un array.'),
  ('js-rest-destructuring', 'en', 'What are `x` and `rest` after this code?

```ts
const o = { x: 1, y: 2, z: 3 };
const { x, ...rest } = o;
```', '["`x` is `1` and `rest` is `{ x: 1, y: 2, z: 3 }`, with all the properties","`x` is `1` and `rest` is `[2, 3]`, an array with the remaining values","`x` is `undefined`, because the `...` operator takes all the properties","`x` is `1` and `rest` is `{ y: 2, z: 3 }`, the object without `x`"]'::jsonb, 'When destructuring, `...rest` collects **the rest** of the properties into a new object, without the ones you already extracted. It is the way to "remove" properties from an object without mutating it. With arrays, `...rest` collects the remaining elements into an array.'),
  ('js-closure-counter', 'es', '¿Qué devuelve la tercera llamada?

```ts
const contador = () => {
  let n = 0;
  return () => ++n;
};

const c = contador();
c();
c();
console.log(c());
```', '["`3`: la función interna recuerda la variable `n` de su ámbito (*closure*)","`1`: cada llamada a `c()` empieza de nuevo con `n` igual a 0","`undefined`, porque `n` desaparece cuando termina de ejecutarse `contador()`","Un error, porque la función interna no puede leer ni modificar `n`"]'::jsonb, 'Una **closure** es una función que conserva acceso a las variables del ámbito donde se creó, aunque este haya terminado. `c` sigue viendo la misma `n`, que va 1, 2, 3. Es la base de patrones como los *factories* y el estado privado.'),
  ('js-closure-counter', 'en', 'What does the third call return?

```ts
const counter = () => {
  let n = 0;
  return () => ++n;
};

const c = counter();
c();
c();
console.log(c());
```', '["`3`: the inner function remembers `n` from its scope (*closure*)","`1`: each call to `c()` starts again with `n` equal to 0","`undefined`, because `n` disappears when `counter()` finishes running","An error, because the inner function can neither read nor modify `n`"]'::jsonb, 'A **closure** is a function that keeps access to the variables of the scope where it was created, even after that has finished. `c` keeps seeing the same `n`, which goes 1, 2, 3. It is the basis of patterns such as factories and private state.'),
  ('js-date-utc-vs-local', 'es', 'Un instante es `2026-10-22T23:30:00Z`. En Madrid (UTC+2), ¿qué día dan estas dos expresiones?

```ts
const d = new Date(''2026-10-22T23:30:00Z'');

d.toISOString().slice(0, 10);
d.toLocaleDateString(''en-CA'');
```', '["`2026-10-22` las dos, porque representan el mismo instante","`2026-10-23` las dos, porque Madrid va por delante de UTC","`2026-10-22` la primera y `2026-10-23` la segunda, que usa la hora local","`2026-10-23` la primera y `2026-10-22` la segunda, porque ISO usa siempre la hora local"]'::jsonb, '`toISOString()` da siempre la hora **UTC** (`2026-10-22`). `toLocaleDateString(''en-CA'')` usa la **zona horaria del usuario**: en Madrid ya es la 01:30 del día 23. `en-CA` se elige solo por el formato `AAAA-MM-DD`. Para contar rachas, el día debe ser el del usuario.'),
  ('js-date-utc-vs-local', 'en', 'An instant is `2026-10-22T23:30:00Z`. In Madrid (UTC+2), what day do these two expressions give?

```ts
const d = new Date(''2026-10-22T23:30:00Z'');

d.toISOString().slice(0, 10);
d.toLocaleDateString(''en-CA'');
```', '["`2026-10-22` both, because they represent the same instant","`2026-10-23` both, because Madrid is ahead of UTC","`2026-10-22` the first and `2026-10-23` the second, which uses local time","`2026-10-23` the first and `2026-10-22` the second, because ISO always uses local time"]'::jsonb, '`toISOString()` always gives **UTC** time (`2026-10-22`). `toLocaleDateString(''en-CA'')` uses the **user''s time zone**: in Madrid it is already 01:30 on the 23rd. `en-CA` is chosen only for the `YYYY-MM-DD` format. To count streaks, the day must be the user''s.'),
  ('js-optional-chaining', 'es', '¿Qué devuelve `usuario?.direccion?.ciudad` si `usuario.direccion` es `null`?', '["Un error `TypeError`, porque no se puede leer una propiedad de `null`","`undefined`: el encadenamiento opcional corta y no lanza ningún error","`null`, el mismo valor que tiene la propiedad que está antes","Una cadena vacía, que es el valor por defecto de una ciudad sin dato"]'::jsonb, 'El **encadenamiento opcional** (`?.`) corta la expresión y devuelve `undefined` si lo que hay antes es `null` o `undefined`, en vez de lanzar un `TypeError`. Se combina con `??` para dar un valor por defecto: `usuario?.direccion?.ciudad ?? ''—''`.'),
  ('js-optional-chaining', 'en', 'What does `user?.address?.city` return if `user.address` is `null`?', '["A `TypeError`, because a property of `null` cannot be read","`undefined`: optional chaining short-circuits and throws no error","`null`, the same value as the property that comes before","An empty string, which is the default value for a city with no data"]'::jsonb, '**Optional chaining** (`?.`) short-circuits the expression and returns `undefined` if what comes before is `null` or `undefined`, instead of throwing a `TypeError`. It combines with `??` to give a default value: `user?.address?.city ?? ''—''`.'),
  ('js-promise-all-vs-allsettled', 'es', '¿Qué diferencia hay entre `Promise.all` y `Promise.allSettled`?', '["`Promise.all` las ejecuta en serie y `allSettled` las ejecuta todas en paralelo","Ninguna: son dos nombres del mismo método en versiones distintas de JavaScript","`all` falla en cuanto una falla; `allSettled` espera a todas","`allSettled` falla en cuanto una falla; `all` espera siempre a que terminen todas"]'::jsonb, '`Promise.all` se **rechaza en cuanto una** promesa falla (pierdes el resto de resultados). `Promise.allSettled` espera a **todas** y devuelve un array con `{ status: ''fulfilled'' | ''rejected'', ... }` de cada una. Las dos ejecutan en paralelo.'),
  ('js-promise-all-vs-allsettled', 'en', 'What is the difference between `Promise.all` and `Promise.allSettled`?', '["`Promise.all` runs them in series and `allSettled` runs them all in parallel","None: they are two names for the same method in different JavaScript versions","`all` fails when one fails; `allSettled` waits for all of them","`allSettled` fails as soon as one fails; `all` always waits for all to finish"]'::jsonb, '`Promise.all` **rejects as soon as one** promise fails (you lose the other results). `Promise.allSettled` waits for **all** of them and returns an array with `{ status: ''fulfilled'' | ''rejected'', ... }` for each. Both run in parallel.'),
  ('js-const-mutation', 'es', '¿Qué hace `const` exactamente?', '["Hace que el valor sea inmutable: ni el contenido de un objeto puede cambiar","Impide reasignar la variable, pero un objeto o array puede modificarse por dentro","Declara una constante global que cualquier fichero de la aplicación puede leer","Hace que la variable se calcule una sola vez y se guarde en caché siempre"]'::jsonb, '`const` impide **reasignar** la variable (`x = otro`), no mutar su contenido: `const o = {}; o.a = 1;` es válido. Para impedir cambios en un objeto se usa `Object.freeze` (superficial) o se trabaja de forma inmutable.'),
  ('js-const-mutation', 'en', 'What exactly does `const` do?', '["It makes the value immutable: not even an object''s contents can change","It prevents reassigning the variable, but objects can change inside","It declares a global constant that any file in the application can read","It makes the variable be computed once and always cached"]'::jsonb, '`const` prevents **reassigning** the variable (`x = other`), not mutating its contents: `const o = {}; o.a = 1;` is valid. To prevent changes to an object you use `Object.freeze` (shallow) or work immutably.'),
  ('ts-as-vs-nonnull', 'es', '¿Qué diferencia hay entre `valor as number` y `valor!`?', '["`as` fuerza un tipo que afirmas; `!` solo afirma que no es `null`","`as` comprueba el tipo en tiempo de ejecución y `!` lo comprueba al compilar","Ninguna: las dos convierten el valor al tipo correcto en tiempo de ejecución","`!` convierte cualquier valor en `number` y `as` solo quita el `null`"]'::jsonb, 'Ninguna de las dos hace nada **en ejecución**: son afirmaciones al compilador. `valor as number` le dice "trátalo como número"; `valor!` le dice "no es `null`/`undefined`". Si te equivocas, el error aparece al ejecutar. Es mejor estrechar el tipo con una comprobación.'),
  ('ts-as-vs-nonnull', 'en', 'What is the difference between `value as number` and `value!`?', '["`as` forces a type you assert; `!` only asserts it is not `null`","`as` checks the type at runtime and `!` checks it at compile time","None: both convert the value to the right type at runtime","`!` converts any value to `number` and `as` only removes the `null`"]'::jsonb, 'Neither does anything **at runtime**: they are assertions to the compiler. `value as number` tells it "treat it as a number"; `value!` tells it "it is not `null`/`undefined`". If you are wrong, the error appears when running. It is better to narrow the type with a check.'),
  ('ts-unknown-vs-any', 'es', '¿Por qué se prefiere `unknown` a `any` para un valor de tipo desconocido?', '["Porque `unknown` es más rápido en ejecución que `any` en cualquier caso","Porque `any` ya no existe en las versiones recientes de TypeScript","`unknown` obliga a comprobar el tipo antes de usarlo; `any` no comprueba","Porque `unknown` convierte el valor automáticamente al tipo que se necesite"]'::jsonb, '`any` **desactiva** la comprobación de tipos: puedes hacer cualquier cosa con el valor, y los errores aparecen al ejecutar. `unknown` es el tipo seguro: no puedes usar el valor hasta **estrecharlo** (`typeof x === ''string''`, `instanceof`...).'),
  ('ts-unknown-vs-any', 'en', 'Why is `unknown` preferred over `any` for a value of unknown type?', '["Because `unknown` is faster at runtime than `any` in every case","Because `any` no longer exists in recent TypeScript versions","`unknown` forces a type check before use; `any` turns checking off","Because `unknown` automatically converts the value to whatever type is needed"]'::jsonb, '`any` **turns off** type checking: you can do anything with the value, and errors show up at runtime. `unknown` is the safe type: you cannot use the value until you **narrow** it (`typeof x === ''string''`, `instanceof`...).'),
  ('ts-type-vs-value', 'es', '¿Por qué `state: OptionState` da error en este objeto?

```ts
type OptionState = ''selected'' | ''correct'' | '''';

const view = {
  text: ''hola'',
  state: OptionState,
};
```', '["Porque `OptionState` es una cadena y debería escribirse entre comillas","Porque los tipos de unión no se pueden usar dentro de objetos literales","Porque `OptionState` solo puede usarse dentro de una clase de Angular","Porque `OptionState` es un tipo, y ahí se espera un valor"]'::jsonb, 'En TypeScript hay dos mundos: los **tipos** (`type`, `interface`) y los **valores** (variables, literales). Un tipo no existe en ejecución, así que no puede usarse donde se espera un valor. Se usa en anotaciones (`state: OptionState`) o genéricos, y el valor es `''selected''`.'),
  ('ts-type-vs-value', 'en', 'Why does `state: OptionState` give an error in this object?

```ts
type OptionState = ''selected'' | ''correct'' | '''';

const view = {
  text: ''hola'',
  state: OptionState,
};
```', '["Because `OptionState` is a string and should be written in quotes","Because union types cannot be used inside object literals","Because `OptionState` can only be used inside an Angular class","Because `OptionState` is a type, and a value is expected there"]'::jsonb, 'In TypeScript there are two worlds: **types** (`type`, `interface`) and **values** (variables, literals). A type does not exist at runtime, so it cannot be used where a value is expected. It is used in annotations (`state: OptionState`) or generics, and the value is `''selected''`.'),
  ('ts-union-literal', 'es', '¿Qué significa `type Lang = ''es'' | ''en'';`?', '["Que `Lang` es un texto cualquiera que puede contener `es` o `en` dentro","Que una variable de tipo `Lang` solo puede valer exactamente `''es''` o `''en''`","Que `Lang` es un array que contiene las dos cadenas `es` y `en`","Que `Lang` es una función que devuelve `es` o `en` según el navegador"]'::jsonb, 'Es una **unión de tipos literales**: solo valen esos dos valores. TypeScript marca error si asignas `''fr''` y permite que `Record<Lang, ...>` exija una clave por idioma. Es más seguro que `string` y se borra al compilar.'),
  ('ts-union-literal', 'en', 'What does `type Lang = ''es'' | ''en'';` mean?', '["That `Lang` is any text that can contain `es` or `en` inside","That a variable of type `Lang` can only be exactly `''es''` or `''en''`","That `Lang` is an array containing the two strings `es` and `en`","That `Lang` is a function that returns `es` or `en` depending on the browser"]'::jsonb, 'It is a **union of literal types**: only those two values are allowed. TypeScript errors if you assign `''fr''` and lets `Record<Lang, ...>` require one key per language. It is safer than `string` and is erased on compile.'),
  ('ts-record-utility', 'es', '¿Qué describe `Record<Lang, string>` si `Lang` es `''es'' | ''en''`?', '["Un objeto con las claves `es` y `en`, y un `string` en cada una","Un array de textos con un elemento para cada idioma disponible","Un objeto con cualquier cantidad de claves de texto, sin límite","Una función que recibe un idioma y devuelve un texto de ese idioma"]'::jsonb, '`Record<K, V>` es un objeto cuyas claves son `K` y cuyos valores son `V`. Con `K` como unión de literales, **exige todas las claves**: si añades `''fr''` a `Lang`, TypeScript marca error en cada objeto al que le falte.'),
  ('ts-record-utility', 'en', 'What does `Record<Lang, string>` describe if `Lang` is `''es'' | ''en''`?', '["An object with the keys `es` and `en`, and a `string` in each","An array of texts with one element for each available language","An object with any number of text keys, with no limit","A function that receives a language and returns a text in that language"]'::jsonb, '`Record<K, V>` is an object whose keys are `K` and whose values are `V`. With `K` as a union of literals, it **requires every key**: if you add `''fr''` to `Lang`, TypeScript errors on every object missing it.'),
  ('ts-interface-vs-type', 'es', '¿Cuándo usarías `type` y no `interface`?', '["Nunca: `type` es una versión obsoleta que ya no se recomienda usar","Solo para clases de Angular, porque `interface` no se admite en ellas","Para uniones, tuplas o alias de otros tipos, que `interface` no expresa","Siempre que el objeto vaya a tener más de cinco propiedades distintas"]'::jsonb, '`interface` solo describe la **forma de objetos** y se puede ampliar (`extends`, y fusionar declaraciones). `type` puede dar nombre a **cualquier tipo**: uniones (`''es'' | ''en''`), tuplas, tipos condicionales. Para objetos simples, los dos valen.'),
  ('ts-interface-vs-type', 'en', 'When would you use `type` instead of `interface`?', '["Never: `type` is an obsolete version that is no longer recommended","Only for Angular classes, because `interface` is not supported on them","For unions, tuples or aliases, which `interface` cannot express","Whenever the object will have more than five distinct properties"]'::jsonb, '`interface` only describes the **shape of objects** and can be extended (`extends`, and declaration merging). `type` can name **any type**: unions (`''es'' | ''en''`), tuples, conditional types. For simple objects, both work.'),
  ('ts-narrowing', 'es', '¿Qué tipo tiene `valor` dentro del `if`?

```ts
function f(valor: string | number) {
  if (typeof valor === ''string'') {
    // aquí, ¿de qué tipo es valor?
  }
}
```', '["`string | number`: el `if` no cambia el tipo que declara la función","`string`: TypeScript lo **estrecha** (*narrowing*) dentro del `if`","`number`, porque el `if` se cumple cuando el valor no es de tipo texto","`unknown`, porque tras una comprobación de tipo se pierde la información"]'::jsonb, 'TypeScript analiza el flujo de control y **estrecha** el tipo tras comprobaciones como `typeof`, `instanceof`, `in` o igualdades. Dentro del `if`, `valor` es `string`; en el `else`, `number`. Es lo que permite usar `unknown` de forma segura.'),
  ('ts-narrowing', 'en', 'What type does `value` have inside the `if`?

```ts
function f(value: string | number) {
  if (typeof value === ''string'') {
    // here, what type is value?
  }
}
```', '["`string | number`: the `if` does not change the type the function declares","`string`: TypeScript **narrows** it inside the `if`","`number`, because the `if` holds when the value is not of text type","`unknown`, because after a type check the information is lost"]'::jsonb, 'TypeScript analyzes control flow and **narrows** the type after checks such as `typeof`, `instanceof`, `in` or equalities. Inside the `if`, `value` is `string`; in the `else`, `number`. It is what lets you use `unknown` safely.'),
  ('ts-generics', 'es', '¿Qué aporta el genérico `<T>` en esta función?

```ts
function primero<T>(lista: T[]): T {
  return lista[0];
}
```', '["Que la función solo acepte listas de texto y devuelva siempre un texto","Que `T` se convierta automáticamente en `any` cuando no se indique ningún tipo","Que el tipo de `T` se compruebe mientras la aplicación se está ejecutando","Que el resultado dependa de la lista: `primero([1, 2])` es `number`"]'::jsonb, 'Un genérico es un **parámetro de tipo**: `T` se infiere en cada llamada, así que `primero([1, 2])` devuelve `number` y `primero([''a''])` devuelve `string`, sin perder tipado ni usar `any`. Los genéricos se borran al compilar.'),
  ('ts-generics', 'en', 'What does the generic `<T>` provide in this function?

```ts
function first<T>(list: T[]): T {
  return list[0];
}
```', '["That the function only accepts lists of text and always returns text","That `T` automatically becomes `any` when no type is given","That `T`''s type is checked while the application is running","That the result depends on the list: `first([1, 2])` is `number`"]'::jsonb, 'A generic is a **type parameter**: `T` is inferred at each call, so `first([1, 2])` returns `number` and `first([''a''])` returns `string`, without losing typing or using `any`. Generics are erased on compile.'),
  ('ts-utility-partial-pick', 'es', '¿Qué hacen `Partial<User>` y `Pick<User, ''id'' | ''name''>`?', '["`Partial` hace opcionales todas las propiedades; `Pick` se queda solo con las indicadas","`Partial` elimina las propiedades opcionales; `Pick` las convierte todas en obligatorias","`Partial` copia el objeto en ejecución; `Pick` elige una propiedad al azar para usarla","Las dos hacen lo mismo con distinto nombre: crear un tipo con menos propiedades"]'::jsonb, 'Son **utility types**: `Partial<T>` convierte todas las propiedades en opcionales (útil para `patch`), `Pick<T, K>` selecciona un subconjunto de propiedades y `Omit<T, K>` hace lo contrario (las quita). Operan solo sobre tipos, no sobre valores.'),
  ('ts-utility-partial-pick', 'en', 'What do `Partial<User>` and `Pick<User, ''id'' | ''name''>` do?', '["`Partial` makes all properties optional; `Pick` keeps only the given ones","`Partial` removes optional properties; `Pick` makes them all required","`Partial` copies the object at runtime; `Pick` picks a random property to use","Both do the same with a different name: create a type with fewer properties"]'::jsonb, 'They are **utility types**: `Partial<T>` makes all properties optional (useful for `patch`), `Pick<T, K>` selects a subset of properties and `Omit<T, K>` does the opposite (removes them). They operate on types only, not on values.'),
  ('ts-types-erased', 'es', 'Los datos de una API tienen el tipo `User[]` en TypeScript. ¿Garantiza eso que la respuesta real cumple ese tipo?', '["Sí: TypeScript comprueba cada respuesta de la red al ejecutar la aplicación","No: los tipos se borran al compilar y no comprueban nada en ejecución","Sí, pero solo cuando la respuesta viene de `HttpClient` y no de `fetch`","No, salvo que el tipo se haya declarado con `interface` en lugar de con `type`"]'::jsonb, 'Los tipos de TypeScript **no existen en ejecución**: `http.get<User[]>(...)` solo le dice al compilador qué esperas. Si el servidor devuelve otra cosa, el error aparece más tarde. Para datos externos se **valida en ejecución** (Zod, Valibot...) o se confía en un esquema controlado.'),
  ('ts-types-erased', 'en', 'API data has the type `User[]` in TypeScript. Does that guarantee the real response meets that type?', '["Yes: TypeScript checks every network response when the application runs","No: types are erased on compile and check nothing of what arrives at runtime","Yes, but only when the response comes from `HttpClient` and not from `fetch`","No, unless the type was declared with `interface` instead of `type`"]'::jsonb, 'TypeScript types **do not exist at runtime**: `http.get<User[]>(...)` only tells the compiler what you expect. If the server returns something else, the error appears later. For external data you **validate at runtime** (Zod, Valibot...) or rely on a controlled schema.'),
  ('ts-readonly', 'es', '¿Qué hace `readonly` en `readonly lang = signal(''es'');`?', '["Hace que el signal sea inmutable y no se pueda llamar nunca a `set()` sobre él","Hace que el signal se guarde en el almacenamiento del navegador de solo lectura","Impide reasignar la propiedad `lang`, aunque el signal por dentro sí pueda cambiar","Hace que la propiedad solo se pueda leer desde la plantilla del componente"]'::jsonb, '`readonly` impide **reasignar la propiedad** (`this.lang = otro`) y solo existe en tiempo de compilación. El signal sigue siendo escribible (`lang.set(...)`). Para exponerlo de solo lectura se usa `asReadonly()`.'),
  ('ts-readonly', 'en', 'What does `readonly` do in `readonly lang = signal(''es'');`?', '["It makes the signal immutable and `set()` can never be called on it","It makes the signal be stored in the browser''s read-only storage","It prevents reassigning `lang`, though the signal inside can change","It makes the property readable only from the component''s template"]'::jsonb, '`readonly` prevents **reassigning the property** (`this.lang = other`) and only exists at compile time. The signal is still writable (`lang.set(...)`). To expose it read-only you use `asReadonly()`.')
on conflict (question_id, lang) do update set
    prompt = excluded.prompt,
    options = excluded.options,
    explanation = excluded.explanation;
