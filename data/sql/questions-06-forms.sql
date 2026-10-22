-- Generado por scripts/questions-to-sql.mjs. Se puede ejecutar varias veces: no duplica nada.
-- Las preguntas nuevas entran como draft. Las que ya existen se actualizan, y su estado se respeta.

insert into public.questions (id, tech, topic, difficulty, type, correct_index, status, ref_version) values
  ('ng-forms-reactive-vs-template', 'angular', 'forms', 'easy', 'test', 1, 'draft', 'angular@22'),
  ('ng-forms-imports', 'angular', 'forms', 'easy', 'test', 2, 'draft', 'angular@22'),
  ('ng-forms-reset-null', 'angular', 'forms', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('ng-forms-nonnullable', 'angular', 'forms', 'hard', 'test', 3, 'draft', 'angular@22'),
  ('ng-forms-required-state', 'angular', 'forms', 'easy', 'test', 1, 'draft', 'angular@22'),
  ('ng-forms-setvalue-vs-patchvalue', 'angular', 'forms', 'medium', 'test', 2, 'draft', 'angular@22'),
  ('ng-forms-dirty-touched', 'angular', 'forms', 'medium', 'test', 3, 'draft', 'angular@22'),
  ('ng-forms-emitevent-false', 'angular', 'forms', 'hard', 'test', 1, 'draft', 'angular@22'),
  ('ng-forms-custom-validator', 'angular', 'forms', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('ng-forms-validator-factory', 'angular', 'forms', 'hard', 'test', 2, 'draft', 'angular@22'),
  ('ng-forms-minlength-empty', 'angular', 'forms', 'hard', 'test', 1, 'draft', 'angular@22'),
  ('ng-forms-crossfield-validator', 'angular', 'forms', 'hard', 'test', 0, 'draft', 'angular@22'),
  ('ng-forms-async-validator-pending', 'angular', 'forms', 'hard', 'test', 3, 'draft', 'angular@22'),
  ('ng-forms-formarray', 'angular', 'forms', 'medium', 'test', 1, 'draft', 'angular@22'),
  ('ng-forms-disabled-rawvalue', 'angular', 'forms', 'hard', 'test', 2, 'draft', 'angular@22'),
  ('ng-forms-markalltouched', 'angular', 'forms', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('ng-forms-template-name', 'angular', 'forms', 'easy', 'test', 3, 'draft', 'angular@22'),
  ('ng-forms-formcontrol-vs-name', 'angular', 'forms', 'easy', 'test', 1, 'draft', 'angular@22'),
  ('ng-forms-updateon-blur', 'angular', 'forms', 'hard', 'test', 0, 'draft', 'angular@22'),
  ('ng-forms-controlvalueaccessor', 'angular', 'forms', 'hard', 'test', 2, 'draft', 'angular@22'),
  ('ng-forms-typed-nullable', 'angular', 'forms', 'medium', 'test', 1, 'draft', 'angular@22'),
  ('ng-forms-status-values', 'angular', 'forms', 'easy', 'test', 3, 'draft', 'angular@22'),
  ('ng-forms-haserror', 'angular', 'forms', 'easy', 'test', 2, 'draft', 'angular@22'),
  ('ng-signalforms-schema', 'angular', 'forms', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('ng-forms-valuechanges-search', 'angular', 'forms', 'medium', 'test', 1, 'draft', 'angular@22'),
  ('ng-forms-formbuilder', 'angular', 'forms', 'easy', 'test', 0, 'draft', 'angular@22')
on conflict (id) do update set
    tech = excluded.tech,
    topic = excluded.topic,
    difficulty = excluded.difficulty,
    correct_index = excluded.correct_index,
    ref_version = excluded.ref_version;
  
insert into public.question_translations (question_id, lang, prompt, options, explanation) values
  ('ng-forms-reactive-vs-template', 'es', '¿Cuál es la diferencia principal entre formularios reactivos y formularios de plantilla (*template-driven*)?', '["Los reactivos no admiten validación y los de plantilla sí la incluyen de serie","En los reactivos el modelo se define en la clase; en los de plantilla, con directivas en el HTML","Los reactivos solo funcionan con signals y los de plantilla solo funcionan con RxJS","No hay ninguna diferencia: son dos nombres para el mismo sistema de formularios"]'::jsonb, 'En los **reactivos** (`FormGroup`, `FormControl`) construyes el modelo explícitamente en TypeScript, lo que da más control y facilita probarlo. En los de **plantilla** (`ngModel`) Angular deduce el modelo de las directivas del HTML: más simple, pero con menos control.'),
  ('ng-forms-reactive-vs-template', 'en', 'What is the main difference between reactive forms and template-driven forms?', '["Reactive ones do not support validation and template-driven ones include it by default","In reactive forms the model is defined in the class; in template-driven, with directives in the HTML","Reactive ones only work with signals and template-driven ones only work with RxJS","There is no difference: they are two names for the same forms system"]'::jsonb, 'In **reactive** forms (`FormGroup`, `FormControl`) you build the model explicitly in TypeScript, which gives more control and makes testing easier. In **template-driven** forms (`ngModel`) Angular infers the model from the HTML directives: simpler, but with less control.'),
  ('ng-forms-imports', 'es', '¿Qué necesita importar un componente standalone para usar `[formGroup]` y `formControlName`?', '["`FormsModule`, que contiene todas las directivas de formularios de Angular","`HttpClientModule`, porque los formularios envían siempre datos al servidor","`ReactiveFormsModule`, que incluye `FormGroupDirective` y `FormControlName`","Nada: las directivas de formularios están disponibles en todos los componentes"]'::jsonb, '`ReactiveFormsModule` trae las directivas de los formularios reactivos (`[formGroup]`, `formControlName`, `[formControl]`). `FormsModule` trae `ngModel`, para los de plantilla.'),
  ('ng-forms-imports', 'en', 'What does a standalone component need to import to use `[formGroup]` and `formControlName`?', '["`FormsModule`, which contains all of Angular''s form directives","`HttpClientModule`, because forms always send data to the server","`ReactiveFormsModule`, which includes `FormGroupDirective` and `FormControlName`","Nothing: form directives are available in every component"]'::jsonb, '`ReactiveFormsModule` brings the reactive forms directives (`[formGroup]`, `formControlName`, `[formControl]`). `FormsModule` brings `ngModel`, for template-driven forms.'),
  ('ng-forms-reset-null', 'es', '¿Qué imprime este código?

```ts
const name = new FormControl(''Ana'');
name.setValue(''Luis'');
name.reset();
console.log(name.value);
```', '["`null`: `reset()` vuelve a `null`, no al valor con el que se creó","`''Ana''`, el valor inicial con el que se creó el control","`''Luis''`, porque `reset()` solo limpia el estado y no el valor","`undefined`, porque el control queda sin inicializar tras el reinicio"]'::jsonb, 'Por defecto, `reset()` deja el valor en **`null`**, no en el inicial. Por eso el tipo es `FormControl<string | null>`. Con `{ nonNullable: true }`, `reset()` restaura el valor inicial (`''Ana''`).'),
  ('ng-forms-reset-null', 'en', 'What does this code print?

```ts
const name = new FormControl(''Ana'');
name.setValue(''Luis'');
name.reset();
console.log(name.value);
```', '["`null`: `reset()` goes back to `null`, not to the value it was created with","`''Ana''`, the initial value the control was created with","`''Luis''`, because `reset()` only clears the state and not the value","`undefined`, because the control is left uninitialized after the reset"]'::jsonb, 'By default, `reset()` leaves the value as **`null`**, not the initial one. That is why the type is `FormControl<string | null>`. With `{ nonNullable: true }`, `reset()` restores the initial value (`''Ana''`).'),
  ('ng-forms-nonnullable', 'es', '¿Qué cambia con `new FormControl(''Ana'', { nonNullable: true })`?', '["El control no se puede dejar vacío y la validación `required` se activa sola","El control deja de emitir `valueChanges` cuando se escribe un valor vacío","El control se deshabilita automáticamente cuando su valor llega a ser `null`","`reset()` restaura el valor inicial y el tipo pasa a ser `string`"]'::jsonb, 'Con `nonNullable: true`, el control nunca es `null`: `reset()` vuelve al valor inicial y el tipo es `FormControl<string>` (sin `| null`). Con `fb.nonNullable.group(...)` se aplica a todos los controles del grupo.'),
  ('ng-forms-nonnullable', 'en', 'What changes with `new FormControl(''Ana'', { nonNullable: true })`?', '["The control cannot be left empty and `required` validation turns on by itself","The control stops emitting `valueChanges` when an empty value is typed","The control is automatically disabled when its value becomes `null`","`reset()` restores the initial value and the type becomes `string`"]'::jsonb, 'With `nonNullable: true`, the control is never `null`: `reset()` goes back to the initial value and the type is `FormControl<string>` (without `| null`). With `fb.nonNullable.group(...)` it applies to every control in the group.'),
  ('ng-forms-required-state', 'es', '¿Qué imprime este código?

```ts
const c = new FormControl('''', Validators.required);
console.log(c.valid, c.errors);
```', '["`true null`, porque el usuario todavía no ha tocado el control","`false { required: true }`: la validación se ejecuta desde que se crea","`false null`, porque los errores solo existen después de enviar el formulario","`true { required: false }`, porque `required` solo se comprueba al perder el foco"]'::jsonb, 'La validación se calcula **desde que se crea el control**: un valor vacío con `required` es inválido y `errors` es `{ required: true }`. Que el usuario lo haya tocado o no solo decide **cuándo mostrar** el error en pantalla.'),
  ('ng-forms-required-state', 'en', 'What does this code print?

```ts
const c = new FormControl('''', Validators.required);
console.log(c.valid, c.errors);
```', '["`true null`, because the user has not touched the control yet","`false { required: true }`: validation runs from the moment it is created","`false null`, because errors only exist after submitting the form","`true { required: false }`, because `required` is only checked on blur"]'::jsonb, 'Validation is computed **from the moment the control is created**: an empty value with `required` is invalid and `errors` is `{ required: true }`. Whether the user has touched it only decides **when to show** the error on screen.'),
  ('ng-forms-setvalue-vs-patchvalue', 'es', '¿Qué ocurre con cada llamada?

```ts
const form = new FormGroup({
  name: new FormControl(''''),
  age: new FormControl(0),
});

form.patchValue({ name: ''Ana'' });
form.setValue({ name: ''Ana'' });
```', '["Las dos actualizan solo `name` y dejan `age` exactamente como estaba","`patchValue` lanza un error y `setValue` actualiza solo `name`","`patchValue` actualiza `name`; `setValue` lanza un error porque falta `age`","Las dos lanzan un error, porque `age` no se ha indicado en el objeto"]'::jsonb, '`patchValue` acepta un objeto **parcial** y actualiza solo lo indicado. `setValue` exige **todos** los controles del grupo y lanza un error si falta alguno. Usa `patchValue` para rellenar parte del formulario.'),
  ('ng-forms-setvalue-vs-patchvalue', 'en', 'What happens with each call?

```ts
const form = new FormGroup({
  name: new FormControl(''''),
  age: new FormControl(0),
});

form.patchValue({ name: ''Ana'' });
form.setValue({ name: ''Ana'' });
```', '["Both update only `name` and leave `age` exactly as it was","`patchValue` throws an error and `setValue` updates only `name`","`patchValue` updates `name`; `setValue` throws an error because `age` is missing","Both throw an error, because `age` is not specified in the object"]'::jsonb, '`patchValue` accepts a **partial** object and updates only what is given. `setValue` requires **every** control in the group and throws if one is missing. Use `patchValue` to fill part of the form.'),
  ('ng-forms-dirty-touched', 'es', 'Cambias el valor de un control con `control.setValue(''x'')` desde el código. ¿Qué valen `dirty` y `touched`?', '["Los dos pasan a `true`, igual que si lo hiciera el usuario escribiendo","`dirty` pasa a `true` y `touched` sigue en `false`","`touched` pasa a `true` y `dirty` sigue en `false`","Los dos siguen en `false`: solo cambian con la interacción del usuario"]'::jsonb, '`dirty` y `touched` reflejan lo que hace **el usuario** (escribir, salir del campo). Un `setValue` desde el código no los modifica. Si los necesitas, se activan con `markAsDirty()` y `markAsTouched()`.'),
  ('ng-forms-dirty-touched', 'en', 'You change a control''s value with `control.setValue(''x'')` from code. What are `dirty` and `touched`?', '["Both become `true`, just as if the user had typed","`dirty` becomes `true` and `touched` stays `false`","`touched` becomes `true` and `dirty` stays `false`","Both stay `false`: they only change with user interaction"]'::jsonb, '`dirty` and `touched` reflect what **the user** does (typing, leaving the field). A `setValue` from code does not change them. If you need them, you set them with `markAsDirty()` and `markAsTouched()`.'),
  ('ng-forms-emitevent-false', 'es', '¿Qué imprime este código?

```ts
const c = new FormControl('''');
c.valueChanges.subscribe((v) => console.log(v));

c.setValue(''a'');
c.setValue(''b'', { emitEvent: false });
c.setValue(''c'');
```', '["`a`, `b` y `c`: `emitEvent` no afecta a lo que emite `valueChanges`","`a` y `c`: con `emitEvent: false` ese cambio no se emite","Solo `c`, porque `valueChanges` ignora todo salvo el último valor","`a`, `b` y `c`, y además un error por usar `emitEvent: false`"]'::jsonb, 'Con `{ emitEvent: false }`, el valor cambia pero **no se emite** `valueChanges`. Es útil para evitar bucles al actualizar un campo desde un `subscribe` de otro, aunque conviene usarlo con cuidado.'),
  ('ng-forms-emitevent-false', 'en', 'What does this code print?

```ts
const c = new FormControl('''');
c.valueChanges.subscribe((v) => console.log(v));

c.setValue(''a'');
c.setValue(''b'', { emitEvent: false });
c.setValue(''c'');
```', '["`a`, `b` and `c`: `emitEvent` does not affect what `valueChanges` emits","`a` and `c`: with `emitEvent: false` that change is not emitted","Only `c`, because `valueChanges` ignores everything but the last value","`a`, `b` and `c`, plus an error for using `emitEvent: false`"]'::jsonb, 'With `{ emitEvent: false }`, the value changes but `valueChanges` is **not emitted**. It is useful to avoid loops when updating one field from another''s `subscribe`, though it should be used with care.'),
  ('ng-forms-custom-validator', 'es', '¿Qué debe devolver un validador síncrono cuando el valor es válido?

```ts
function noSpaces(control: AbstractControl): ValidationErrors | null {
  return control.value?.includes('' '') ? { noSpaces: true } : null;
}
```', '["`null`, que representa la ausencia de errores","`true`, para indicar que la validación ha pasado","`undefined`, igual que una función sin ningún `return`","`false`, porque `true` se reserva para los errores"]'::jsonb, 'Un validador síncrono devuelve `null` si es válido, o un **objeto de errores** (`{ noSpaces: true }`) si no lo es. La clave del objeto es el nombre del error, que se lee con `control.errors` o `hasError(''noSpaces'')`.'),
  ('ng-forms-custom-validator', 'en', 'What must a synchronous validator return when the value is valid?

```ts
function noSpaces(control: AbstractControl): ValidationErrors | null {
  return control.value?.includes('' '') ? { noSpaces: true } : null;
}
```', '["`null`, which represents the absence of errors","`true`, to indicate that validation passed","`undefined`, like a function with no `return` at all","`false`, because `true` is reserved for errors"]'::jsonb, 'A synchronous validator returns `null` if valid, or an **errors object** (`{ noSpaces: true }`) if not. The object key is the error name, read with `control.errors` or `hasError(''noSpaces'')`.'),
  ('ng-forms-validator-factory', 'es', '¿Por qué `forbiddenName` devuelve una función en lugar de devolver directamente los errores?

```ts
function forbiddenName(name: string): ValidatorFn {
  return (control) => (control.value === name ? { forbiddenName: true } : null);
}

new FormControl('''', forbiddenName(''admin''));
```', '["Porque Angular exige que todas las funciones de validación sean asíncronas","Porque así el validador se ejecuta una sola vez, cuando se crea el control","Es una *factory*: recibe el parámetro y devuelve el `ValidatorFn` que usa el control","Porque las funciones normales no pueden devolver `null` dentro de un validador"]'::jsonb, 'Un `ValidatorFn` solo recibe el control. Para pasarle datos propios (el nombre prohibido) se usa una *factory*: una función que recibe los parámetros y **devuelve** el validador. Así funcionan también `Validators.minLength(3)` o `Validators.pattern(...)`.'),
  ('ng-forms-validator-factory', 'en', 'Why does `forbiddenName` return a function instead of returning the errors directly?

```ts
function forbiddenName(name: string): ValidatorFn {
  return (control) => (control.value === name ? { forbiddenName: true } : null);
}

new FormControl('''', forbiddenName(''admin''));
```', '["Because Angular requires every validation function to be asynchronous","Because that way the validator runs only once, when the control is created","It is a *factory*: it takes the parameter and returns the `ValidatorFn` the control uses","Because normal functions cannot return `null` inside a validator"]'::jsonb, 'A `ValidatorFn` only receives the control. To pass it your own data (the forbidden name) you use a *factory*: a function that takes the parameters and **returns** the validator. `Validators.minLength(3)` or `Validators.pattern(...)` work the same way.'),
  ('ng-forms-minlength-empty', 'es', 'Un control vacío tiene `Validators.required` y `Validators.minLength(3)`. ¿Qué errores tiene?

```ts
const c = new FormControl('''', [Validators.required, Validators.minLength(3)]);
console.log(c.errors);
```', '["`required` y `minlength`, porque una cadena vacía tiene menos de 3 caracteres","Solo `required`: `minLength` no valida los valores vacíos","Solo `minlength`, porque `required` se omite si hay otro validador","Ninguno, porque el control todavía no ha sido tocado por el usuario"]'::jsonb, '`minLength`, `maxLength`, `pattern` o `email` **ignoran los valores vacíos**: dejan esa decisión a `required`. Así el usuario ve un único mensaje ("obligatorio") en vez de dos a la vez.'),
  ('ng-forms-minlength-empty', 'en', 'An empty control has `Validators.required` and `Validators.minLength(3)`. What errors does it have?

```ts
const c = new FormControl('''', [Validators.required, Validators.minLength(3)]);
console.log(c.errors);
```', '["`required` and `minlength`, because an empty string has fewer than 3 characters","Only `required`: `minLength` does not validate empty values","Only `minlength`, because `required` is skipped if there is another validator","None, because the user has not touched the control yet"]'::jsonb, '`minLength`, `maxLength`, `pattern` or `email` **ignore empty values**: they leave that decision to `required`. That way the user sees a single message ("required") instead of two at once.'),
  ('ng-forms-crossfield-validator', 'es', '¿Dónde aparece el error `mismatch`?

```ts
const form = new FormGroup(
  { pass: new FormControl(''1''), repeat: new FormControl(''2'') },
  {
    validators: (group) =>
      group.get(''pass'')?.value === group.get(''repeat'')?.value ? null : { mismatch: true },
  },
);
```', '["En `form.errors`: en el grupo, no en un control concreto","En `form.get(''pass'')?.errors`, el primer control del grupo","En `form.get(''repeat'')?.errors`, el último control que se compara","En ningún sitio: los validadores de grupo no pueden devolver errores"]'::jsonb, 'Un validador de **grupo** se aplica al `FormGroup` y su error aparece en `form.errors`. Es la forma de validar campos que dependen entre sí (contraseña y repetición). Los controles hijos siguen siendo válidos.'),
  ('ng-forms-crossfield-validator', 'en', 'Where does the `mismatch` error appear?

```ts
const form = new FormGroup(
  { pass: new FormControl(''1''), repeat: new FormControl(''2'') },
  {
    validators: (group) =>
      group.get(''pass'')?.value === group.get(''repeat'')?.value ? null : { mismatch: true },
  },
);
```', '["In `form.errors`: on the group, not on a specific control","In `form.get(''pass'')?.errors`, the first control in the group","In `form.get(''repeat'')?.errors`, the last control being compared","Nowhere: group validators cannot return errors"]'::jsonb, 'A **group** validator is applied to the `FormGroup` and its error appears in `form.errors`. It is the way to validate fields that depend on each other (password and repeat). The child controls remain valid.'),
  ('ng-forms-async-validator-pending', 'es', '¿Qué `status` tiene el control mientras se espera la respuesta del validador asíncrono?

```ts
const username = new FormControl(''ana'', null, () =>
  timer(300).pipe(map(() => ({ taken: true }))),
);
```', '["`VALID`, porque aún no se ha detectado ningún error","`INVALID`, porque el validador todavía no ha respondido","`DISABLED`, porque el control espera a que termine la comprobación","`PENDING`, hasta que el validador asíncrono responde"]'::jsonb, 'Mientras un validador asíncrono no ha terminado, el estado es **`PENDING`**. Después pasa a `VALID` o `INVALID`. Los validadores asíncronos solo se ejecutan si los síncronos pasan, para evitar peticiones inútiles.'),
  ('ng-forms-async-validator-pending', 'en', 'What `status` does the control have while waiting for the async validator''s response?

```ts
const username = new FormControl(''ana'', null, () =>
  timer(300).pipe(map(() => ({ taken: true }))),
);
```', '["`VALID`, because no error has been detected yet","`INVALID`, because the validator has not responded yet","`DISABLED`, because the control waits for the check to finish","`PENDING`, until the async validator responds"]'::jsonb, 'While an async validator has not finished, the status is **`PENDING`**. It then becomes `VALID` or `INVALID`. Async validators only run if the sync ones pass, to avoid pointless requests.'),
  ('ng-forms-formarray', 'es', '¿Qué imprime este código?

```ts
const tags = new FormArray([new FormControl(''a''), new FormControl(''b'')]);
tags.push(new FormControl(''c''));
tags.removeAt(0);
console.log(tags.value);
```', '["`[''a'', ''b'', ''c'']`, porque `removeAt` solo marca el elemento como borrado","`[''b'', ''c'']`: se añade `c` y se elimina el elemento de la posición 0","`[''a'', ''c'']`, porque `removeAt(0)` borra el segundo elemento de la lista","`[''c'']`, porque `removeAt` elimina todos los elementos anteriores a `c`"]'::jsonb, '`FormArray` es una lista dinámica de controles: `push` añade al final y `removeAt(i)` elimina por posición. Su `value` es un array con los valores de sus controles. Es lo que se usa para listas que crecen o encogen (teléfonos, etiquetas).'),
  ('ng-forms-formarray', 'en', 'What does this code print?

```ts
const tags = new FormArray([new FormControl(''a''), new FormControl(''b'')]);
tags.push(new FormControl(''c''));
tags.removeAt(0);
console.log(tags.value);
```', '["`[''a'', ''b'', ''c'']`, because `removeAt` only marks the item as deleted","`[''b'', ''c'']`: `c` is added and the item at position 0 is removed","`[''a'', ''c'']`, because `removeAt(0)` deletes the second item in the list","`[''c'']`, because `removeAt` removes all the items before `c`"]'::jsonb, '`FormArray` is a dynamic list of controls: `push` adds at the end and `removeAt(i)` removes by position. Its `value` is an array with its controls'' values. It is what you use for lists that grow or shrink (phones, tags).'),
  ('ng-forms-disabled-rawvalue', 'es', '¿Qué devuelven `form.value` y `form.getRawValue()` si el control `b` está deshabilitado?

```ts
const form = new FormGroup({
  a: new FormControl(''1''),
  b: new FormControl(''2''),
});
form.get(''b'')?.disable();
```', '["Los dos devuelven `{ a: ''1'', b: ''2'' }`, porque el valor no depende del estado","`value` devuelve `{ a: ''1'', b: ''2'' }` y `getRawValue()` devuelve `{ a: ''1'' }`","`value` omite el control deshabilitado y `getRawValue()` lo incluye","Los dos omiten `b`, porque un control deshabilitado deja de tener valor"]'::jsonb, '`form.value` **excluye** los controles deshabilitados (`{ a: ''1'' }`). `getRawValue()` los incluye (`{ a: ''1'', b: ''2'' }`). Es una sorpresa típica: al enviar el formulario puede faltar un campo deshabilitado.'),
  ('ng-forms-disabled-rawvalue', 'en', 'What do `form.value` and `form.getRawValue()` return if control `b` is disabled?

```ts
const form = new FormGroup({
  a: new FormControl(''1''),
  b: new FormControl(''2''),
});
form.get(''b'')?.disable();
```', '["Both return `{ a: ''1'', b: ''2'' }`, because the value does not depend on the state","`value` returns `{ a: ''1'', b: ''2'' }` and `getRawValue()` returns `{ a: ''1'' }`","`value` omits the disabled control and `getRawValue()` includes it","Both omit `b`, because a disabled control no longer has a value"]'::jsonb, '`form.value` **excludes** disabled controls (`{ a: ''1'' }`). `getRawValue()` includes them (`{ a: ''1'', b: ''2'' }`). It is a classic surprise: when submitting the form a disabled field may be missing.'),
  ('ng-forms-markalltouched', 'es', 'Al enviar un formulario inválido, ¿qué método hace que se muestren los errores de todos los campos si los mensajes dependen de `touched`?', '["`markAllAsTouched()` sobre el grupo, para que todos cuenten como tocados","`reset()` sobre el grupo, porque limpia los mensajes de error pendientes","`disable()` sobre el grupo, que fuerza la validación de cada campo","`setValue({})` sobre el grupo, que recalcula todos los errores de golpe"]'::jsonb, 'Si el mensaje de error solo sale cuando el campo está `touched`, un usuario que pulsa "Enviar" sin tocar nada no vería ninguno. `form.markAllAsTouched()` marca todos como tocados y los errores aparecen.'),
  ('ng-forms-markalltouched', 'en', 'When submitting an invalid form, which method makes the errors of every field appear if messages depend on `touched`?', '["`markAllAsTouched()` on the group, so all of them count as touched","`reset()` on the group, because it clears pending error messages","`disable()` on the group, which forces validation of each field","`setValue({})` on the group, which recalculates all errors at once"]'::jsonb, 'If the error message only shows when the field is `touched`, a user who presses "Submit" without touching anything would see none. `form.markAllAsTouched()` marks them all as touched and the errors appear.'),
  ('ng-forms-template-name', 'es', 'En un formulario de plantilla, ¿qué atributo necesita un `<input [(ngModel)]>` dentro de un `<form>`?', '["`id`, porque `ngModel` registra los controles por su identificador","`type`, para indicar al formulario qué clase de valor guarda","`formControlName`, que es la directiva que conecta cada campo","`name`, con el que el control se registra dentro del formulario"]'::jsonb, 'Dentro de un `<form>`, `ngModel` registra el control con el valor de su atributo **`name`**. Sin él, Angular lanza un error (salvo que uses `[ngModelOptions]="{ standalone: true }"`).'),
  ('ng-forms-template-name', 'en', 'In a template-driven form, which attribute does an `<input [(ngModel)]>` need inside a `<form>`?', '["`id`, because `ngModel` registers controls by their identifier","`type`, to tell the form what kind of value it holds","`formControlName`, which is the directive that connects each field","`name`, with which the control registers itself inside the form"]'::jsonb, 'Inside a `<form>`, `ngModel` registers the control using the value of its **`name`** attribute. Without it, Angular throws an error (unless you use `[ngModelOptions]="{ standalone: true }"`).'),
  ('ng-forms-formcontrol-vs-name', 'es', '¿Cuándo usas `[formControl]` y cuándo `formControlName`?', '["`[formControl]` dentro de un `FormGroup` y `formControlName` solo fuera de él","`[formControl]` enlaza un control suelto; `formControlName` lo busca por nombre dentro de `[formGroup]`","Son sinónimos: se pueden intercambiar en cualquier plantilla sin cambiar nada","`[formControl]` es para componentes standalone y `formControlName` para NgModules"]'::jsonb, '`[formControl]="miControl"` enlaza directamente un `FormControl` que tienes en la clase. `formControlName="email"` busca el control por su nombre dentro del `FormGroup` que enlaza `[formGroup]` en un elemento padre.'),
  ('ng-forms-formcontrol-vs-name', 'en', 'When do you use `[formControl]` and when `formControlName`?', '["`[formControl]` inside a `FormGroup` and `formControlName` only outside it","`[formControl]` binds a standalone control; `formControlName` looks it up by name inside `[formGroup]`","They are synonyms: they can be swapped in any template without changing anything","`[formControl]` is for standalone components and `formControlName` for NgModules"]'::jsonb, '`[formControl]="myControl"` directly binds a `FormControl` you hold in the class. `formControlName="email"` looks up the control by name inside the `FormGroup` that `[formGroup]` binds on a parent element.'),
  ('ng-forms-updateon-blur', 'es', '¿Qué efecto tiene `updateOn: ''blur''` en un `FormControl`?', '["El valor y la validez se actualizan cuando el campo pierde el foco, no con cada tecla","El control se actualiza solo cuando el usuario pulsa el botón de enviar el formulario","El campo se desactiva automáticamente al perder el foco, hasta que se vuelve a pulsar","El control emite `valueChanges` una vez por segundo mientras mantiene el foco"]'::jsonb, 'Por defecto un control se actualiza en cada `input` (`updateOn: ''change''`). Con `''blur''` el valor del modelo y la validación se actualizan al salir del campo, y con `''submit''`, al enviar. Reduce validaciones mientras el usuario aún escribe.'),
  ('ng-forms-updateon-blur', 'en', 'What effect does `updateOn: ''blur''` have on a `FormControl`?', '["The value and validity update when the field loses focus, not on every keystroke","The control updates only when the user presses the form''s submit button","The field is automatically disabled on losing focus, until it is clicked again","The control emits `valueChanges` once per second while it keeps focus"]'::jsonb, 'By default a control updates on every `input` (`updateOn: ''change''`). With `''blur''` the model value and validation update when leaving the field, and with `''submit''`, on submit. It reduces validations while the user is still typing.'),
  ('ng-forms-controlvalueaccessor', 'es', '¿Para qué sirve implementar `ControlValueAccessor` en un componente?', '["Para que el componente pueda hacer peticiones HTTP con los datos del formulario","Para guardar automáticamente el valor del campo en `localStorage` al cambiar","Para que un componente propio funcione como campo con `ngModel` o `formControl`","Para validar el valor del campo de forma asíncrona sin escribir un validador"]'::jsonb, '`ControlValueAccessor` es el puente entre Angular Forms y un componente propio (un selector de fechas, un rating...). Define `writeValue`, `registerOnChange`, `registerOnTouched` y `setDisabledState`, y se registra con `NG_VALUE_ACCESSOR`.'),
  ('ng-forms-controlvalueaccessor', 'en', 'What is implementing `ControlValueAccessor` in a component for?', '["So the component can make HTTP requests with the form data","To automatically save the field value in `localStorage` on change","So a custom component works as a field with `ngModel` or `formControl`","To validate the field value asynchronously without writing a validator"]'::jsonb, '`ControlValueAccessor` is the bridge between Angular Forms and a custom component (a date picker, a rating...). It defines `writeValue`, `registerOnChange`, `registerOnTouched` and `setDisabledState`, and is registered with `NG_VALUE_ACCESSOR`.'),
  ('ng-forms-typed-nullable', 'es', '¿Por qué el tipo de `new FormControl('''')` es `FormControl<string | null>`?', '["Porque los formularios de Angular no admiten cadenas vacías como valor válido","Porque `reset()` puede dejar el valor en `null`","Porque TypeScript no sabe inferir el tipo del valor inicial de un control","Porque `null` es el valor por defecto de todos los `input` de HTML"]'::jsonb, 'Desde los formularios tipados (Angular 14), el tipo refleja que `reset()` puede devolver `null`. Si quieres evitarlo, `new FormControl('''', { nonNullable: true })` da `FormControl<string>`.'),
  ('ng-forms-typed-nullable', 'en', 'Why is the type of `new FormControl('''')` `FormControl<string | null>`?', '["Because Angular forms do not support empty strings as a valid value","Because `reset()` can leave the value as `null`","Because TypeScript cannot infer the type of a control''s initial value","Because `null` is the default value of every HTML `input`"]'::jsonb, 'Since typed forms (Angular 14), the type reflects that `reset()` can return `null`. To avoid it, `new FormControl('''', { nonNullable: true })` gives `FormControl<string>`.'),
  ('ng-forms-status-values', 'es', '¿Qué valores puede tomar la propiedad `status` de un control o grupo?', '["`OK`, `ERROR` y `LOADING`","`TRUE`, `FALSE` y `UNKNOWN`","`PRISTINE`, `DIRTY` y `TOUCHED`","`VALID`, `INVALID`, `PENDING` y `DISABLED`"]'::jsonb, '`status` es uno de `VALID`, `INVALID`, `PENDING` (validador asíncrono en marcha) o `DISABLED`. `pristine`/`dirty` y `touched`/`untouched` son otro conjunto de propiedades, sobre la interacción del usuario.'),
  ('ng-forms-status-values', 'en', 'Which values can the `status` property of a control or group take?', '["`OK`, `ERROR` and `LOADING`","`TRUE`, `FALSE` and `UNKNOWN`","`PRISTINE`, `DIRTY` and `TOUCHED`","`VALID`, `INVALID`, `PENDING` and `DISABLED`"]'::jsonb, '`status` is one of `VALID`, `INVALID`, `PENDING` (async validator running) or `DISABLED`. `pristine`/`dirty` and `touched`/`untouched` are a different set of properties, about user interaction.'),
  ('ng-forms-haserror', 'es', '¿Qué comprueba `form.get(''email'')?.hasError(''required'')`?', '["Si el campo tiene el atributo HTML `required` escrito en su plantilla","Si el campo ha sido tocado y está vacío en ese preciso momento","Si el control tiene un error con la clave `required` en su `errors`","Si el formulario entero es inválido porque falta algún campo"]'::jsonb, '`hasError(''required'')` devuelve `true` si `errors` contiene la clave `required`. Suele combinarse con `touched` para mostrar el mensaje: `control.touched && control.hasError(''required'')`.'),
  ('ng-forms-haserror', 'en', 'What does `form.get(''email'')?.hasError(''required'')` check?', '["Whether the field has the HTML `required` attribute written in its template","Whether the field has been touched and is empty at that very moment","Whether the control has an error with the key `required` in its `errors`","Whether the whole form is invalid because some field is missing"]'::jsonb, '`hasError(''required'')` returns `true` if `errors` contains the key `required`. It is usually combined with `touched` to show the message: `control.touched && control.hasError(''required'')`.'),
  ('ng-signalforms-schema', 'es', 'En Signal Forms, ¿dónde se declaran las reglas de validación?', '["En una función que recibe `path` y se pasa a `form()`, junto al modelo","En un array de `Validators` que se pasa a cada `FormControl` al crearlo","En atributos HTML como `required` y `minlength`, que Angular lee del DOM","En un NgModule de validaciones que se importa en el componente raíz"]'::jsonb, 'Se pasan como segundo argumento de `form(modelo, (path) => { required(path.email); email(path.email); })`. `path` apunta a los campos del modelo y las funciones (`required`, `email`, `minLength`...) declaran las reglas.'),
  ('ng-signalforms-schema', 'en', 'In Signal Forms, where are validation rules declared?', '["In a function that receives `path` and is passed to `form()`, next to the model","In an array of `Validators` passed to each `FormControl` when creating it","In HTML attributes such as `required` and `minlength`, which Angular reads from the DOM","In a validations NgModule imported in the root component"]'::jsonb, 'They are passed as the second argument of `form(model, (path) => { required(path.email); email(path.email); })`. `path` points to the model''s fields and the functions (`required`, `email`, `minLength`...) declare the rules.'),
  ('ng-forms-valuechanges-search', 'es', '¿Qué ventaja tiene este patrón en un campo de búsqueda?

```ts
this.search.valueChanges
  .pipe(debounceTime(300), distinctUntilChanged())
  .subscribe((term) => this.load(term));
```', '["Hace que el campo ignore las teclas que no sean letras o números","Evita cargar por cada tecla y repetir la carga con un texto igual al anterior","Cancela automáticamente la petición anterior cuando el usuario sigue escribiendo","Guarda en caché los resultados de cada término buscado durante la sesión"]'::jsonb, '`debounceTime(300)` espera a que el usuario pare de escribir y `distinctUntilChanged()` descarta un valor igual al anterior. Para **cancelar** la petición en curso se añadiría `switchMap`.'),
  ('ng-forms-valuechanges-search', 'en', 'What advantage does this pattern have in a search box?

```ts
this.search.valueChanges
  .pipe(debounceTime(300), distinctUntilChanged())
  .subscribe((term) => this.load(term));
```', '["It makes the field ignore keys that are not letters or numbers","It avoids loading on every keystroke and repeating the load with the same text as before","It automatically cancels the previous request while the user keeps typing","It caches the results of each searched term during the session"]'::jsonb, '`debounceTime(300)` waits for the user to stop typing and `distinctUntilChanged()` discards a value equal to the previous one. To **cancel** the in-flight request you would add `switchMap`.'),
  ('ng-forms-formbuilder', 'es', '¿Qué ventaja ofrece `FormBuilder`?', '["Una sintaxis más corta para crear grupos, arrays y controles, como `fb.group({ ... })`","Que los formularios creados con él se validan en el servidor en lugar del cliente","Que convierte automáticamente un formulario de plantilla en uno reactivo","Que permite crear formularios sin tener que importar ningún módulo de formularios"]'::jsonb, '`FormBuilder` es un atajo: `fb.group({ name: [''''], email: ['''', Validators.email] })` en vez de escribir `new FormGroup({ name: new FormControl(''''), ... })`. Se inyecta con `inject(FormBuilder)`. No cambia lo que hace el formulario.'),
  ('ng-forms-formbuilder', 'en', 'What advantage does `FormBuilder` offer?', '["A shorter syntax to create groups, arrays and controls, such as `fb.group({ ... })`","That forms created with it are validated on the server instead of the client","That it automatically turns a template-driven form into a reactive one","That it lets you create forms without importing any forms module"]'::jsonb, '`FormBuilder` is a shortcut: `fb.group({ name: [''''], email: ['''', Validators.email] })` instead of writing `new FormGroup({ name: new FormControl(''''), ... })`. It is injected with `inject(FormBuilder)`. It does not change what the form does.')
on conflict (question_id, lang) do update set
    prompt = excluded.prompt,
    options = excluded.options,
    explanation = excluded.explanation;
