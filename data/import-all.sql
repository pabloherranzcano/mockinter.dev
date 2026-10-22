-- Generado por scripts/questions-to-sql.mjs. Se puede ejecutar varias veces: no duplica nada.
-- Las preguntas nuevas entran como draft. Las que ya existen se actualizan, y su estado se respeta.

insert into public.questions (id, tech, topic, difficulty, type, correct_index, status, ref_version) values
  ('ng-computed-vs-effect', 'angular', 'signals', 'easy', 'test', 1, 'draft', 'angular@22'),
  ('ng-computed-memoized', 'angular', 'signals', 'medium', 'test', 3, 'draft', 'angular@22'),
  ('ng-zoneless-settimeout', 'angular', 'zoneless', 'hard', 'test', 1, 'draft', 'angular@22'),
  ('ng-zoneless-triggers', 'angular', 'zoneless', 'medium', 'test', 2, 'draft', 'angular@22'),
  ('ng-onpush-vs-signals', 'angular', 'zoneless', 'hard', 'test', 0, 'draft', 'angular@22'),
  ('ng-route-input-binding', 'angular', 'routing', 'medium', 'test', 1, 'draft', 'angular@22'),
  ('ng-providers-component', 'angular', 'dependency-injection', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('ng-providers-children', 'angular', 'dependency-injection', 'hard', 'test', 3, 'draft', 'angular@22'),
  ('ng-inject-context', 'angular', 'dependency-injection', 'medium', 'test', 2, 'draft', 'angular@22'),
  ('ng-inject-vs-constructor', 'angular', 'dependency-injection', 'easy', 'test', 1, 'draft', 'angular@22'),
  ('ts-protected-template', 'typescript', 'classes', 'easy', 'test', 1, 'draft', 'typescript@5'),
  ('ts-default-public', 'typescript', 'classes', 'easy', 'test', 0, 'draft', 'typescript@5'),
  ('ts-private-vs-hash', 'typescript', 'classes', 'hard', 'test', 2, 'draft', 'typescript@5'),
  ('ng-for-track', 'angular', 'templates', 'easy', 'test', 3, 'draft', 'angular@22'),
  ('ng-httpresource-signals', 'angular', 'http', 'easy', 'test', 1, 'draft', 'angular@22'),
  ('ng-resource-value-throws', 'angular', 'http', 'hard', 'test', 0, 'draft', 'angular@22'),
  ('ng-ui-states-order', 'angular', 'templates', 'medium', 'test', 2, 'draft', 'angular@22'),
  ('ng-untracked', 'angular', 'signals', 'hard', 'test', 1, 'draft', 'angular@22'),
  ('ng-effect-signal-writes', 'angular', 'signals', 'hard', 'test', 3, 'draft', 'angular@22'),
  ('ng-state-in-url', 'angular', 'routing', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('ng-standalone-imports', 'angular', 'components', 'easy', 'test', 2, 'draft', 'angular@22'),
  ('ng-pipe-not-found', 'angular', 'components', 'easy', 'test', 1, 'draft', 'angular@22'),
  ('ng-store-definition', 'angular', 'architecture', 'medium', 'test', 2, 'draft', 'angular@22'),
  ('ng-signalforms-field-vs-state', 'angular', 'forms', 'hard', 'test', 1, 'draft', 'angular@22'),
  ('ng-signalforms-model', 'angular', 'forms', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('css-scss-vs-css-vars', 'css', 'variables', 'medium', 'test', 2, 'draft', 'evergreen'),
  ('css-rem-vs-em', 'css', 'units', 'easy', 'test', 1, 'draft', 'evergreen'),
  ('css-default-font-size', 'css', 'units', 'hard', 'test', 3, 'draft', 'evergreen'),
  ('css-rem-media-queries', 'css', 'responsive', 'medium', 'test', 0, 'draft', 'evergreen'),
  ('css-min-container', 'css', 'layout', 'medium', 'test', 2, 'draft', 'evergreen'),
  ('css-current-color', 'css', 'colors', 'easy', 'test', 1, 'draft', 'evergreen'),
  ('css-em-padding', 'css', 'units', 'easy', 'test', 3, 'draft', 'evergreen'),
  ('css-em-nesting', 'css', 'units', 'medium', 'test', 0, 'draft', 'evergreen'),
  ('css-border-box', 'css', 'layout', 'easy', 'test', 2, 'draft', 'evergreen'),
  ('css-flex-order-a11y', 'css', 'accessibility', 'medium', 'test', 1, 'draft', 'evergreen'),
  ('css-data-theme-bridge', 'css', 'variables', 'medium', 'test', 0, 'draft', 'evergreen'),
  ('html-semantic', 'html', 'semantics', 'easy', 'test', 2, 'draft', 'evergreen'),
  ('html-main-element', 'html', 'semantics', 'easy', 'test', 1, 'draft', 'evergreen'),
  ('html-button-vs-div', 'html', 'accessibility', 'easy', 'test', 3, 'draft', 'evergreen'),
  ('web-og-tags', 'web', 'seo', 'medium', 'test', 2, 'draft', 'evergreen'),
  ('web-og-static-html', 'web', 'seo', 'hard', 'test', 0, 'draft', 'evergreen'),
  ('web-canonical-domain', 'web', 'seo', 'medium', 'test', 1, 'draft', 'evergreen'),
  ('web-301-vs-302', 'web', 'http', 'medium', 'test', 2, 'draft', 'evergreen'),
  ('web-x-frame-options', 'web', 'security', 'medium', 'test', 0, 'draft', 'evergreen'),
  ('web-spa-refresh-404', 'web', 'deployment', 'medium', 'test', 3, 'draft', 'evergreen'),
  ('web-open-redirect', 'web', 'security', 'hard', 'test', 1, 'draft', 'evergreen'),
  ('web-secrets-in-frontend', 'web', 'security', 'medium', 'test', 2, 'draft', 'evergreen'),
  ('web-xss-innerhtml-sanitizer', 'web', 'security', 'hard', 'test', 1, 'draft', 'angular@22'),
  ('rx-map-basic', 'rxjs', 'operators', 'easy', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-observable-vs-promise-lazy', 'rxjs', 'observables', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('rx-behaviorsubject-late-subscriber', 'rxjs', 'subjects', 'medium', 'test', 1, 'draft', 'rxjs@7'),
  ('rx-switchmap-search', 'rxjs', 'operators', 'medium', 'test', 0, 'draft', 'rxjs@7'),
  ('js-nullish-vs-or', 'javascript', 'operators', 'easy', 'test', 0, 'draft', 'es2020'),
  ('js-const-block-scope', 'javascript', 'scope', 'easy', 'test', 2, 'draft', 'es2015'),
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
  ('rx-toobservable-async', 'rxjs', 'interop', 'hard', 'test', 3, 'draft', 'rxjs@7'),
  ('ng-provide-httpclient', 'angular', 'http', 'easy', 'test', 2, 'draft', 'angular@22'),
  ('ng-httpclient-returns-observable', 'angular', 'http', 'easy', 'test', 1, 'draft', 'angular@22'),
  ('ng-httpparams-immutable', 'angular', 'http', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('ng-httpparams-append-vs-set', 'angular', 'http', 'medium', 'test', 1, 'draft', 'angular@22'),
  ('ng-httpheaders-immutable', 'angular', 'http', 'medium', 'test', 3, 'draft', 'angular@22'),
  ('ng-http-error-status-zero', 'angular', 'http', 'medium', 'test', 0, 'draft', 'angular@22'),
  ('ng-http-observe-response', 'angular', 'http', 'medium', 'test', 1, 'draft', 'angular@22'),
  ('ng-http-json-default', 'angular', 'http', 'easy', 'test', 2, 'draft', 'angular@22'),
  ('ng-http-cancel-unsubscribe', 'angular', 'http', 'medium', 'test', 3, 'draft', 'angular@22'),
  ('ng-interceptor-clone', 'angular', 'interceptors', 'medium', 'test', 1, 'draft', 'angular@22'),
  ('ng-interceptor-register', 'angular', 'interceptors', 'easy', 'test', 0, 'draft', 'angular@22'),
  ('ng-interceptor-inject-context', 'angular', 'interceptors', 'medium', 'test', 2, 'draft', 'angular@22'),
  ('ng-interceptor-order', 'angular', 'interceptors', 'hard', 'test', 1, 'draft', 'angular@22'),
  ('ng-interceptor-use-case', 'angular', 'interceptors', 'easy', 'test', 3, 'draft', 'angular@22'),
  ('ng-interceptor-rethrow', 'angular', 'interceptors', 'hard', 'test', 0, 'draft', 'angular@22'),
  ('ng-http-withfetch', 'angular', 'http', 'medium', 'test', 2, 'draft', 'angular@22'),
  ('ng-proxy-purpose', 'angular', 'tooling', 'medium', 'test', 1, 'draft', 'angular@22'),
  ('ng-proxy-dev-only', 'angular', 'tooling', 'hard', 'test', 3, 'draft', 'angular@22'),
  ('web-cors-who-enforces', 'web', 'cors', 'medium', 'test', 0, 'draft', 'evergreen'),
  ('web-cors-allow-origin', 'web', 'cors', 'medium', 'test', 2, 'draft', 'evergreen'),
  ('web-cors-preflight', 'web', 'cors', 'hard', 'test', 1, 'draft', 'evergreen'),
  ('web-401-vs-403', 'web', 'http', 'easy', 'test', 2, 'draft', 'evergreen'),
  ('web-http-idempotent', 'web', 'http', 'hard', 'test', 3, 'draft', 'evergreen'),
  ('ng-httpresource-vs-httpclient', 'angular', 'http', 'hard', 'test', 0, 'draft', 'angular@22'),
  ('ng-http-testing', 'angular', 'testing', 'medium', 'test', 2, 'draft', 'angular@22'),
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
  ('ng-computed-vs-effect', 'es', '¿Cuándo usarías un `computed` y cuándo un `effect`?', '["`computed` para guardar datos en `localStorage` y `effect` para derivar valores nuevos","`computed` para derivar un valor de otros signals; `effect` para ejecutar una acción","Son equivalentes: la única diferencia es que `effect` se ejecuta más rápido","`computed` solo dentro de componentes y `effect` solo dentro de servicios"]'::jsonb, 'Un `computed` calcula un valor derivado: es de solo lectura y se recalcula únicamente cuando cambian sus dependencias. Un `effect` ejecuta una acción (guardar en `localStorage`, llamar a algo externo) cuando cambian los signals que lee. Regla práctica: si el resultado es un valor que vas a usar, `computed`; si es una acción, `effect`.'),
  ('ng-computed-vs-effect', 'en', 'When would you use a `computed` and when an `effect`?', '["`computed` to save data in `localStorage` and `effect` to derive new values","`computed` to derive a value from other signals; `effect` to run an action","They are equivalent: the only difference is that `effect` runs faster","`computed` only inside components and `effect` only inside services"]'::jsonb, 'A `computed` calculates a derived value: it is read-only and only recalculates when its dependencies change. An `effect` runs an action (saving to `localStorage`, calling something external) when the signals it reads change. Rule of thumb: if the result is a value you will use, `computed`; if it is an action, `effect`.'),
  ('ng-computed-memoized', 'es', '¿Qué ventaja tiene un `computed` frente a un getter que hace el mismo cálculo y se llama desde la plantilla?', '["El getter no puede leer signals, así que no se puede usar con ellos","El `computed` se ejecuta en cada detección de cambios, como cualquier función","No hay ninguna diferencia de rendimiento entre los dos en una plantilla","Guarda el resultado y solo recalcula cuando cambian sus dependencias"]'::jsonb, 'El `computed` está memoizado: guarda el resultado y lo reutiliza mientras sus dependencias no cambien, y es perezoso (no calcula hasta que alguien lo lee). Un getter llamado desde la plantilla se ejecuta en cada ciclo de detección de cambios, haya cambiado algo o no.'),
  ('ng-computed-memoized', 'en', 'What advantage does a `computed` have over a getter doing the same calculation and called from the template?', '["The getter cannot read signals, so it cannot be used with them","The `computed` runs on every change detection, like any function","There is no performance difference between the two in a template","It caches the result and only recalculates when its dependencies change"]'::jsonb, 'A `computed` is memoized: it stores the result and reuses it while its dependencies do not change, and it is lazy (it does not calculate until someone reads it). A getter called from the template runs on every change detection cycle, whether or not anything changed.'),
  ('ng-zoneless-settimeout', 'es', 'En una app zoneless cambias una propiedad normal (no un signal) dentro de un `setTimeout` y la muestras en la plantilla. ¿Qué pasa?', '["Se actualiza sola, porque Angular sigue parcheando `setTimeout` aunque no haya Zone.js","No se actualiza: nadie avisa a Angular de que hay que repintar","Angular lanza un error de compilación porque la propiedad no es un signal","Se actualiza únicamente si el componente usa la estrategia `OnPush`"]'::jsonb, 'Sin Zone.js, Angular no parchea las APIs asíncronas. Se entera de que hay que repintar por signals que la plantilla lee, eventos enlazados en la plantilla, `markForCheck()`, la pipe `async` o cambios de `input()`. Un `setTimeout` no avisa, así que en zoneless lo que se muestra en pantalla debe ir en signals.'),
  ('ng-zoneless-settimeout', 'en', 'In a zoneless app you change a plain property (not a signal) inside a `setTimeout` and display it in the template. What happens?', '["It updates by itself, because Angular still patches `setTimeout` even without Zone.js","It does not update: nothing tells Angular to re-render","Angular throws a compile error because the property is not a signal","It only updates if the component uses the `OnPush` strategy"]'::jsonb, 'Without Zone.js, Angular does not patch async APIs. It learns that it must re-render from signals read in the template, events bound in the template, `markForCheck()`, the `async` pipe or `input()` changes. A `setTimeout` does not notify it, so in zoneless apps whatever is shown on screen should live in signals.'),
  ('ng-zoneless-triggers', 'es', 'En una app zoneless, ¿cuál de estas cosas hace que Angular repinte una plantilla?', '["Cambiar el valor de una propiedad normal dentro de un `setTimeout`","Que haya pasado un segundo desde la última vez que se pintó la plantilla","Que cambie un signal que la plantilla lee","Modificar una variable global de la ventana del navegador"]'::jsonb, 'Un signal leído en la plantilla avisa a Angular exactamente de qué ha cambiado. También repintan los eventos enlazados en la plantilla (`(click)`), `markForCheck()`, la pipe `async` y los cambios de `input()`. Zone.js avisaba de que *algo* podía haber cambiado; los signals avisan de *qué* ha cambiado.'),
  ('ng-zoneless-triggers', 'en', 'In a zoneless app, which of these makes Angular re-render a template?', '["Changing the value of a plain property inside a `setTimeout`","One second having passed since the template was last painted","A signal read by the template changing","Modifying a global variable on the browser window"]'::jsonb, 'A signal read in the template tells Angular exactly what changed. Events bound in the template (`(click)`), `markForCheck()`, the `async` pipe and `input()` changes also trigger a render. Zone.js signalled that *something* might have changed; signals signal *what* changed.'),
  ('ng-onpush-vs-signals', 'es', '¿Qué relación hay entre `OnPush` y los signals en una app zoneless?', '["`OnPush` limita qué componentes se revisan, pero quien avisa de los cambios son los signals","`OnPush` sustituye a los signals y es lo que dispara el repintado sin Zone.js","`OnPush` vuelve a activar Zone.js solo para los componentes que lo usan","Con `OnPush`, las propiedades normales se repintan solas aunque no haya Zone.js"]'::jsonb, '`OnPush` es una estrategia de detección de cambios: limita qué componentes se revisan cuando Angular ya está comprobando. No es lo que dispara la comprobación. Sin Zone.js, esa señal la dan los signals leídos en la plantilla, los eventos, `markForCheck()` y la pipe `async`.'),
  ('ng-onpush-vs-signals', 'en', 'What is the relationship between `OnPush` and signals in a zoneless app?', '["`OnPush` limits which components are checked, but signals are what announce changes","`OnPush` replaces signals and is what triggers re-rendering without Zone.js","`OnPush` turns Zone.js back on only for the components that use it","With `OnPush`, plain properties re-render by themselves even without Zone.js"]'::jsonb, '`OnPush` is a change detection strategy: it limits which components are checked once Angular is already checking. It is not what triggers the check. Without Zone.js, that signal comes from signals read in the template, events, `markForCheck()` and the `async` pipe.'),
  ('ng-route-input-binding', 'es', '¿Cómo recibe un componente el parámetro `:tech` de su ruta sin usar `ActivatedRoute`?', '["Con `inject(Params)`, que devuelve un objeto con todos los parámetros","Con `withComponentInputBinding()` y un `input()` que se llame igual que el parámetro","Leyendo `window.location` en el constructor y separando la URL a mano","Con una propiedad normal `tech`, que Angular rellena sola por reflexión"]'::jsonb, 'Con `provideRouter(routes, withComponentInputBinding())`, el router rellena los `input()` cuyo nombre coincide con un parámetro de la ruta, y también con los de la query y los `data` de la ruta. Evitas el `subscribe` y obtienes un signal que puedes usar en un `computed`.'),
  ('ng-route-input-binding', 'en', 'How does a component receive its route''s `:tech` parameter without using `ActivatedRoute`?', '["With `inject(Params)`, which returns an object with every parameter","With `withComponentInputBinding()` and an `input()` named like the parameter","By reading `window.location` in the constructor and splitting the URL by hand","With a plain `tech` property, which Angular fills by itself through reflection"]'::jsonb, 'With `provideRouter(routes, withComponentInputBinding())`, the router fills `input()`s whose name matches a route parameter, and also query parameters and route `data`. You avoid `subscribe` and get a signal you can use in a `computed`.'),
  ('ng-providers-component', 'es', 'Un servicio tiene `providedIn: ''root''` y además lo listas en `providers` de un componente. ¿Qué ocurre?', '["Ese componente y sus hijos reciben una instancia nueva, distinta de la compartida","Se reutiliza la misma instancia global, porque `root` siempre tiene prioridad","Angular lanza un error de compilación porque el servicio está registrado dos veces","El servicio se destruye en cuanto el componente se carga por primera vez"]'::jsonb, '`providers` en un componente crea una instancia nueva para ese componente y su subárbol. Es útil cuando quieres un estado por pantalla (un store de lección) y un fallo cuando solo querías compartir el servicio global: por ejemplo, el idioma dejaría de sincronizarse.'),
  ('ng-providers-component', 'en', 'A service has `providedIn: ''root''` and you also list it in a component''s `providers`. What happens?', '["That component and its children get a new instance, separate from the shared one","The same global instance is reused, because `root` always takes priority","Angular throws a compile error because the service is registered twice","The service is destroyed as soon as the component loads for the first time"]'::jsonb, '`providers` on a component creates a new instance for that component and its subtree. It is useful when you want per-screen state (a lesson store) and a bug when you only wanted the global service: the language, for example, would stop being in sync.'),
  ('ng-providers-children', 'es', 'El componente `Lesson` registra `LessonStore` en `providers` y su hijo `<app-question />` lo inyecta sin registrarlo. ¿Qué instancia recibe el hijo?', '["Una instancia nueva, creada solo para el hijo, sin relación con la del padre","La instancia global de `root`, porque los hijos nunca usan los `providers` del padre","Ninguna: Angular da error porque el hijo no registra el servicio","La misma que creó `Lesson`, porque Angular sube por el árbol buscando el proveedor"]'::jsonb, 'Inyectar no crea nada: pide. Angular busca el proveedor subiendo por el árbol y le da al hijo la instancia registrada por el padre. Solo si el hijo vuelve a listar el servicio en sus `providers` obtiene su propia copia.'),
  ('ng-providers-children', 'en', 'The `Lesson` component registers `LessonStore` in `providers` and its child `<app-question />` injects it without registering it. Which instance does the child get?', '["A new instance, created just for the child, unrelated to the parent''s","The global `root` instance, because children never use the parent''s `providers`","None: Angular throws an error because the child does not register the service","The same one `Lesson` created, because Angular goes up the tree looking for the provider"]'::jsonb, 'Injecting does not create anything: it asks. Angular looks for the provider going up the tree and gives the child the instance registered by the parent. Only if the child lists the service in its own `providers` does it get its own copy.'),
  ('ng-inject-context', 'es', '¿Por qué `inject()` falla si lo llamas dentro de un método que se ejecuta al hacer clic?', '["Porque `inject()` solo funciona con servicios que son `providedIn: ''root''`","Porque los métodos de un componente no pueden ser `async`","Porque solo se puede llamar mientras Angular construye la clase","Porque `inject()` está obsoleta desde que existen los signals"]'::jsonb, '`inject()` solo se puede llamar mientras Angular crea la clase (inicializadores de propiedad, constructor, funciones de guard o factory). Fuera de ahí lanza el error NG0203. La solución es inyectar una vez arriba, como propiedad, y usar esa propiedad en los métodos.'),
  ('ng-inject-context', 'en', 'Why does `inject()` fail if you call it inside a method that runs on click?', '["Because `inject()` only works with services that are `providedIn: ''root''`","Because component methods cannot be `async`","Because it can only be called while Angular is constructing the class","Because `inject()` has been deprecated since signals were introduced"]'::jsonb, '`inject()` can only be called while Angular creates the class (property initializers, constructor, guard or factory functions). Outside that it throws error NG0203. The fix is to inject once at the top, as a property, and use that property in methods.'),
  ('ng-inject-vs-constructor', 'es', '¿Qué ventaja tiene `inject()` sobre la inyección por constructor?', '["Es la única forma de poder usar servicios registrados en `root`","Menos código, vale en inicializadores y funciona también en guards funcionales","Es notablemente más rápido que el constructor cuando la app arranca","Permite crear el servicio con `new` sin pasar por el sistema de inyección"]'::jsonb, 'Con `inject()` declaras la dependencia en una línea, sin constructor, puedes usarla al declarar otras propiedades, las clases hijas no tienen que reenviar parámetros con `super`, y es la única forma de inyectar en guards, resolvers e interceptors que son funciones.'),
  ('ng-inject-vs-constructor', 'en', 'What advantage does `inject()` have over constructor injection?', '["It is the only way to use services registered in `root`","Less code, works in initializers and also works in functional guards","It is noticeably faster than the constructor when the app starts","It lets you create the service with `new` without going through injection"]'::jsonb, 'With `inject()` you declare the dependency in one line, without a constructor, you can use it when declaring other properties, subclasses do not forward parameters with `super`, and it is the only way to inject in guards, resolvers and interceptors that are functions.'),
  ('ts-protected-template', 'es', 'Una propiedad de un componente solo la lee su plantilla. ¿Qué modificador de visibilidad conviene?', '["`private`, porque así ningún otro código externo puede tocarla","`protected`: la plantilla la lee y no queda en la API pública","`public`, en todos los casos, para que la plantilla siempre pueda leerla","`readonly`, que ya sustituye a cualquier modificador de visibilidad"]'::jsonb, 'La plantilla se compila como código que accede a la clase, así que una propiedad `private` da error de compilación al usarla en el HTML. `protected` permite a la plantilla (y a las subclases) leerla sin exponerla como API pública del componente.'),
  ('ts-protected-template', 'en', 'A component property is only read by its own template. Which visibility modifier fits best?', '["`private`, so that no other outside code can touch it","`protected`: the template reads it and it stays out of the public API","`public`, in every case, so the template can always read it","`readonly`, which already replaces any visibility modifier"]'::jsonb, 'The template is compiled as code that accesses the class, so a `private` property causes a compile error when used in the HTML. `protected` lets the template (and subclasses) read it without exposing it as the component''s public API.'),
  ('ts-default-public', 'es', 'En una clase de TypeScript, ¿qué visibilidad tiene un miembro declarado sin modificador?', '["`public`","`private`","`protected`","Depende de si es `readonly`"]'::jsonb, 'Por defecto los miembros son `public`, por eso no se suele escribir. En Angular, un `input()` o un `output()` se declara sin modificador porque forma parte de la API pública del componente.'),
  ('ts-default-public', 'en', 'In a TypeScript class, what visibility does a member declared without a modifier have?', '["`public`","`private`","`protected`","It depends on whether it is `readonly`"]'::jsonb, 'Members are `public` by default, which is why it is usually omitted. In Angular, an `input()` or an `output()` is declared without a modifier because it is part of the component''s public API.'),
  ('ts-private-vs-hash', 'es', '¿Qué diferencia hay entre `private x` y `#x` en una clase una vez compilada a JavaScript?', '["Ninguna: son dos sintaxis equivalentes que producen el mismo JavaScript","`private` es privado también en ejecución y `#x` solo para el compilador","`private x` solo lo comprueba el compilador; `#x` es privado también al ejecutar","`#x` solo se puede usar dentro de componentes de Angular"]'::jsonb, 'El modificador `private` de TypeScript desaparece al compilar: en el JavaScript final la propiedad es accesible. `#x` es una característica de JavaScript que impide el acceso desde fuera de la clase también en ejecución.'),
  ('ts-private-vs-hash', 'en', 'What is the difference between `private x` and `#x` in a class once compiled to JavaScript?', '["None: they are two equivalent syntaxes that produce the same JavaScript","`private` is also private at runtime and `#x` only for the compiler","`private x` is only checked by the compiler; `#x` is also private at runtime","`#x` can only be used inside Angular components"]'::jsonb, 'TypeScript''s `private` modifier disappears on compile: in the final JavaScript the property is accessible. `#x` is a JavaScript feature that prevents access from outside the class at runtime too.'),
  ('ng-for-track', 'es', '¿Para qué sirve `track` en un bloque `@for`?', '["Para ordenar los elementos de la lista según una propiedad","Para filtrar los elementos repetidos antes de pintarlos","Es un parámetro opcional que no cambia nada en el resultado","Para identificar cada elemento y reutilizar el DOM al cambiar la lista"]'::jsonb, '`track` le dice a Angular qué elemento es cuál, así reutiliza los nodos del DOM en vez de borrarlos y crearlos de nuevo cuando la lista cambia. En `@for` es obligatorio; en el antiguo `*ngFor`, `trackBy` era opcional.'),
  ('ng-for-track', 'en', 'What is `track` for in a `@for` block?', '["To sort the list items according to a property","To filter out repeated items before rendering them","It is an optional parameter that changes nothing in the result","To identify each item and reuse the DOM when the list changes"]'::jsonb, '`track` tells Angular which item is which, so it reuses DOM nodes instead of deleting and recreating them when the list changes. In `@for` it is required; in the old `*ngFor`, `trackBy` was optional.'),
  ('ng-httpresource-signals', 'es', '¿Qué tres signals principales expone un `httpResource`?', '["`data`, `isPending` y `failure`","`value`, `isLoading` y `error`","`next`, `error` y `complete`","`result`, `status` y `finished`"]'::jsonb, '`value()`, `isLoading()` y `error()` te dan el estado de la petición ya hecho, sin gestionarlo a mano con `subscribe`. Además, cancela la petición anterior si cambian los signals de los que depende.'),
  ('ng-httpresource-signals', 'en', 'Which three main signals does an `httpResource` expose?', '["`data`, `isPending` and `failure`","`value`, `isLoading` and `error`","`next`, `error` and `complete`","`result`, `status` and `finished`"]'::jsonb, '`value()`, `isLoading()` and `error()` give you the request state ready-made, with no manual `subscribe`. It also cancels the previous request if the signals it depends on change.'),
  ('ng-resource-value-throws', 'es', 'En Angular 22, ¿qué ocurre al leer `resource.value()` cuando el recurso está en estado de error?', '["Lanza una excepción, así que hay que mirar antes `hasValue()`","Devuelve `null` para que puedas comprobarlo con un `if`","Devuelve el último valor válido que hubiera tenido el recurso","Devuelve un array vacío, igual que cuando está cargando"]'::jsonb, '`value()` lanza un error si el recurso está en estado de error. Por eso, un `computed` que dependa de él debe leerlo solo si `hasValue()` es verdadero (por ejemplo `hasValue() ? value() : []`), o la excepción romperá a quien lo use.'),
  ('ng-resource-value-throws', 'en', 'In Angular 22, what happens when you read `resource.value()` while the resource is in an error state?', '["It throws an exception, so you must check `hasValue()` first","It returns `null` so you can check it with an `if`","It returns the last valid value the resource ever had","It returns an empty array, just like while it is loading"]'::jsonb, '`value()` throws if the resource is in an error state. So a `computed` depending on it should only read it when `hasValue()` is true (for example `hasValue() ? value() : []`), or the exception will break whoever uses it.'),
  ('ng-ui-states-order', 'es', 'En una plantilla con estados de carga, error y lista vacía, ¿por qué se comprueba antes carga y error que la lista vacía?', '["Porque comprobarlas primero es más rápido para el motor de plantillas","Porque Angular obliga a ese orden y, si no, da un error de compilación","Porque al cargar o fallar la lista también está vacía y engañaría al usuario","Porque una lista vacía en realidad nunca se produce con una petición HTTP"]'::jsonb, 'Mientras la petición carga, o si falla, los datos son una lista vacía. Si se comprobara primero `length === 0`, el usuario vería ''no hay datos'' en lugar de ''cargando'' o del mensaje de error. El orden correcto es: cargando, error, vacío y, por último, los datos.'),
  ('ng-ui-states-order', 'en', 'In a template with loading, error and empty-list states, why are loading and error checked before the empty list?', '["Because checking them first is faster for the template engine","Because Angular forces that order and otherwise gives a compile error","Because while loading or failing the list is also empty and would mislead the user","Because an empty list never actually happens with an HTTP request"]'::jsonb, 'While the request loads, or if it fails, the data is an empty list. If `length === 0` were checked first, the user would see ''no data'' instead of ''loading'' or the error message. The right order is: loading, error, empty and finally the data.'),
  ('ng-untracked', 'es', '¿Para qué sirve `untracked()` dentro de un `effect`?', '["Para que el `effect` se ejecute una única vez al crearse y no más","Para ejecutar código sin que sus lecturas cuenten como dependencias","Para que TypeScript no se queje de los tipos de los signals leídos","Para cancelar el `effect` cuando el componente ya no se necesita"]'::jsonb, 'Un `effect` se vuelve a ejecutar cuando cambia cualquier signal que lea. Con `untracked(() => ...)` las lecturas de ese código no cuentan como dependencias, así el `effect` solo reacciona a los signals que tú quieres y no a los que se lean de rebote en las funciones que llamas.'),
  ('ng-untracked', 'en', 'What is `untracked()` for inside an `effect`?', '["To make the `effect` run only once when created and never again","To run code without its reads counting as dependencies","So TypeScript does not complain about the types of the signals read","To cancel the `effect` when the component is no longer needed"]'::jsonb, 'An `effect` re-runs when any signal it reads changes. With `untracked(() => ...)` the reads in that code do not count as dependencies, so the `effect` only reacts to the signals you want and not to ones read incidentally by the functions you call.'),
  ('ng-effect-signal-writes', 'es', 'Desde Angular 19, ¿se pueden escribir signals dentro de un `effect`?', '["No, hacerlo lanza siempre un error en ejecución","Solo si se activa la opción `allowSignalWrites: true`","Solo si el código se envuelve dentro de `untracked`","Sí, está permitido por defecto, pero conviene usarlo con cuidado"]'::jsonb, 'Antes había que activar `allowSignalWrites`. Desde Angular 19 está permitido por defecto. Aun así, escribir signals en un `effect` puede crear dependencias o bucles difíciles de seguir, y si el valor es derivable, es mejor un `computed`.'),
  ('ng-effect-signal-writes', 'en', 'Since Angular 19, can you write signals inside an `effect`?', '["No, doing so always throws a runtime error","Only if the `allowSignalWrites: true` option is enabled","Only if the code is wrapped inside `untracked`","Yes, it is allowed by default, but should be used with care"]'::jsonb, 'You used to have to enable `allowSignalWrites`. Since Angular 19 it is allowed by default. Even so, writing signals in an `effect` can create dependencies or loops that are hard to follow, and if the value can be derived, a `computed` is better.'),
  ('ng-state-in-url', 'es', '¿Qué ventaja tiene guardar un filtro en la URL (`/lesson/angular`) en lugar de en un signal de un servicio?', '["Sobrevive a recargar, funciona con el botón atrás y se puede compartir","Se lee más rápido porque no hace falta pasar por ningún signal ni servicio","Permite guardar objetos grandes y privados sin que el usuario los vea","Evita tener que usar el router de Angular en toda la aplicación"]'::jsonb, 'La URL es una única fuente de verdad que sobrevive a un F5, entra en el historial del navegador y se puede compartir. El inconveniente: solo caben datos simples y son visibles y editables por el usuario. Lo temporal e interno va mejor en un signal.'),
  ('ng-state-in-url', 'en', 'What advantage does storing a filter in the URL (`/lesson/angular`) have over a signal in a service?', '["It survives a reload, works with the back button and can be shared","It reads faster because it does not go through any signal or service","It lets you store large, private objects without the user seeing them","It avoids having to use the Angular router across the whole application"]'::jsonb, 'The URL is a single source of truth that survives a refresh, enters the browser history and can be shared. The downside: only simple data fits and it is visible and editable by the user. Temporary, internal state is better in a signal.'),
  ('ng-standalone-imports', 'es', '¿Qué ventaja tiene que cada componente standalone declare sus propios `imports`?', '["Ninguna ventaja real: es solo un cambio de sintaxis sin efecto práctico","Que las pipes ya no hace falta importarlas en ningún componente","El compilador sabe qué usa cada componente y descarta lo que sobra","Que se pueden seguir usando los NgModules con más facilidad que antes"]'::jsonb, 'Con NgModules, un módulo declaraba todo lo que sus componentes podían usar. En standalone, cada componente lista solo lo que necesita (componentes, pipes, directivas). Es autosuficiente, se entiende sin mirar un módulo aparte, y el compilador descarta lo que nadie importa.'),
  ('ng-standalone-imports', 'en', 'What advantage does having each standalone component declare its own `imports` give?', '["No real advantage: it is just a syntax change with no practical effect","That pipes no longer need to be imported in any component","The compiler knows what each component uses and drops what is left over","That NgModules can still be used more easily than before"]'::jsonb, 'With NgModules, a module declared everything its components could use. In standalone, each component lists only what it needs (components, pipes, directives). It is self-contained, understandable without a separate module, and the compiler drops whatever nobody imports.'),
  ('ng-pipe-not-found', 'es', 'Usas `| json` en la plantilla de un componente standalone y el compilador dice `No pipe found with name ''json''`. ¿Qué falta?', '["Instalar un paquete de npm que incluya las pipes comunes de Angular","Importar `JsonPipe` en el array `imports` del componente","Declarar la pipe dentro de un NgModule que importe el componente","Poner `CommonModule` dentro de `app.config.ts` para toda la app"]'::jsonb, 'En standalone, cada pipe, directiva o componente que uses en la plantilla debe estar en el array `imports` de ese componente. No hay un módulo común que las ponga todas a disposición.'),
  ('ng-pipe-not-found', 'en', 'You use `| json` in a standalone component''s template and the compiler says `No pipe found with name ''json''`. What is missing?', '["Installing an npm package that includes Angular''s common pipes","Importing `JsonPipe` in the component''s `imports` array","Declaring the pipe inside an NgModule that imports the component","Putting `CommonModule` inside `app.config.ts` for the whole app"]'::jsonb, 'In standalone, every pipe, directive or component you use in the template must be in that component''s `imports` array. There is no shared module making them all available.'),
  ('ng-store-definition', 'es', '¿Qué es un ''store'' en una aplicación Angular?', '["Un decorador oficial que Angular incluye para guardar datos","Una base de datos que vive dentro del navegador del usuario","Un servicio que centraliza el estado y los métodos para cambiarlo","Un tipo especial de componente que no tiene plantilla propia"]'::jsonb, '''Store'' no es una palabra reservada de Angular: es un servicio normal (`@Injectable`) que guarda estado (signals), expone valores derivados (`computed`) y métodos para cambiarlo. Así el componente solo pinta y la lógica se puede probar sin pantalla.'),
  ('ng-store-definition', 'en', 'What is a ''store'' in an Angular application?', '["An official decorator Angular includes to store data","A database that lives inside the user''s browser","A service that centralizes state and the methods to change it","A special kind of component that has no template of its own"]'::jsonb, '''Store'' is not a reserved Angular word: it is a normal service (`@Injectable`) that holds state (signals), exposes derived values (`computed`) and methods to change it. That way the component only renders and the logic can be tested without a screen.'),
  ('ng-signalforms-field-vs-state', 'es', 'En Signal Forms, ¿qué diferencia hay entre `loginForm.email` y `loginForm.email()`?', '["Ninguna: son dos maneras equivalentes de escribir exactamente lo mismo","El primero es el campo que se enlaza al input; el segundo, su estado","El segundo crea un campo nuevo cada vez que se llama desde la plantilla","El primero solo existe dentro de las plantillas y no en el código"]'::jsonb, 'El campo (sin paréntesis) es lo que enlazas con `[formField]`. Al llamarlo, obtienes su estado, cuyas propiedades son signals: `value()`, `touched()`, `invalid()`, `errors()`... Es la misma convención que en los signals normales.'),
  ('ng-signalforms-field-vs-state', 'en', 'In Signal Forms, what is the difference between `loginForm.email` and `loginForm.email()`?', '["None: they are two equivalent ways of writing exactly the same thing","The first is the field bound to the input; the second is its state","The second creates a new field every time it is called from the template","The first only exists inside templates and not in code"]'::jsonb, 'The field (no parentheses) is what you bind with `[formField]`. Calling it returns its state, whose properties are signals: `value()`, `touched()`, `invalid()`, `errors()`... It is the same convention as ordinary signals.'),
  ('ng-signalforms-model', 'es', 'En Signal Forms, ¿cuál es la fuente de verdad de los datos del formulario?', '["El modelo: un signal propio del que se deriva el formulario","Un `FormGroup` interno que Angular mantiene escondido","El propio DOM, leyendo el valor de cada input","El `localStorage`, que guarda lo escrito en cada campo"]'::jsonb, 'Defines un modelo como un signal (`signal({ email: '''', password: '''' })`) y `form()` crea el formulario a partir de él. Lo que el usuario escribe actualiza tu modelo, y si cambias el modelo desde código, los campos se actualizan. No hay un objeto de formulario aparte que mantener sincronizado.'),
  ('ng-signalforms-model', 'en', 'In Signal Forms, what is the source of truth for the form data?', '["The model: a signal of your own from which the form is derived","An internal `FormGroup` that Angular keeps hidden","The DOM itself, reading each input''s value","`localStorage`, which stores what was typed in each field"]'::jsonb, 'You define a model as a signal (`signal({ email: '''', password: '''' })`) and `form()` creates the form from it. What the user types updates your model, and if you change the model from code, the fields update. There is no separate form object to keep in sync.'),
  ('css-scss-vs-css-vars', 'es', '¿Qué diferencia hay entre una variable de SCSS (`$color`) y una variable CSS (`--color`)?', '["Ninguna: Sass convierte cada `$color` en una `--color` cuando compila el proyecto","Las de SCSS pueden cambiar en el navegador mientras que las de CSS quedan fijas","Las de SCSS se resuelven al compilar; las de CSS siguen vivas","Las de CSS solo se pueden usar dentro de bloques con media queries"]'::jsonb, 'Sass sustituye `$color` por su valor al compilar, así que el nombre no existe en el navegador y el valor queda fijo. Una variable CSS sigue viva, y un media query, un atributo o JavaScript pueden redefinirla. Por eso los temas claro y oscuro usan variables CSS.'),
  ('css-scss-vs-css-vars', 'en', 'What is the difference between an SCSS variable (`$color`) and a CSS variable (`--color`)?', '["None: Sass converts every `$color` into a `--color` when it compiles the project","SCSS ones can change in the browser while CSS ones stay fixed","SCSS ones resolve at compile time; CSS ones stay alive","CSS ones can only be used inside blocks with media queries"]'::jsonb, 'Sass replaces `$color` with its value when compiling, so the name does not exist in the browser and the value is fixed. A CSS variable stays alive, and a media query, an attribute or JavaScript can redefine it. That is why light and dark themes use CSS variables.'),
  ('css-rem-vs-em', 'es', '¿A qué es relativa la unidad `rem`?', '["Al tamaño de letra del elemento padre más cercano en el árbol del documento","Al tamaño de letra de `<html>`, el elemento raíz","Al ancho actual de la ventana del navegador en el que se muestra la página","Al tamaño de letra que tenga el propio elemento donde se escribe"]'::jsonb, '`rem` mira siempre al `font-size` de `<html>` (16 px por defecto). `em` mira al `font-size` del propio elemento, o al del padre cuando se usa en `font-size`. Por eso `em` se acumula al anidar y `rem` no.'),
  ('css-rem-vs-em', 'en', 'What is the `rem` unit relative to?', '["The font size of the nearest parent element in the document tree","The font size of `<html>`, the root element","The current width of the browser window the page is shown in","The font size of the very element where it is written"]'::jsonb, '`rem` always looks at the `font-size` of `<html>` (16 px by default). `em` looks at the element''s own `font-size`, or the parent''s when used in `font-size`. That is why `em` compounds when nested and `rem` does not.'),
  ('css-default-font-size', 'es', 'Un usuario cambia el tamaño de letra por defecto de su navegador. ¿Qué medidas de tu CSS se escalan?', '["Tanto las medidas escritas en `px` como las escritas en `rem` y `em`","Solo las escritas en `px`, que son las más fiables en todos los navegadores","Ninguna: ese ajuste solo afecta a los menús del propio navegador","Solo las escritas en `rem` o `em`"]'::jsonb, 'El zoom del navegador escala todo, también los `px`. En cambio, el tamaño de letra por defecto es una preferencia que solo respetan `rem` y `em`. Por eso se usa `rem` para texto y breakpoints: es una cuestión de accesibilidad.'),
  ('css-default-font-size', 'en', 'A user changes their browser''s default font size. Which of your CSS measurements scale?', '["Both the measurements written in `px` and those written in `rem` and `em`","Only those written in `px`, which are the most reliable in every browser","None: that setting only affects the browser''s own menus","Only those written in `rem` or `em`"]'::jsonb, 'Browser zoom scales everything, `px` too. The default font size, however, is a preference that only `rem` and `em` respect. That is why `rem` is used for text and breakpoints: it is an accessibility matter.'),
  ('css-rem-media-queries', 'es', '¿Por qué conviene escribir un media query como `max-width: 30rem` en vez de `480px`?', '["El punto de ruptura escala con la letra elegida","Porque los media queries no aceptan valores escritos en `px` en CSS moderno","Porque con `rem` el navegador evalúa el media query más rápido en móviles","No hay diferencia en ningún caso; es solo una preferencia de estilo del equipo"]'::jsonb, 'Con letra más grande el texto ocupa más y el diseño de escritorio se rompe antes. Un breakpoint en `rem` se adapta: a 24 px de letra base, `30rem` equivale a 720 px, y el diseño móvil entra antes.'),
  ('css-rem-media-queries', 'en', 'Why is a media query like `max-width: 30rem` preferable to `480px`?', '["The breakpoint scales with the chosen font size","Because media queries do not accept `px` values in modern CSS","Because with `rem` the browser evaluates the media query faster on phones","There is no difference in any case; it is just a team style preference"]'::jsonb, 'With larger text the content takes more space and the desktop layout breaks sooner. A breakpoint in `rem` adapts: with a 24 px base font, `30rem` equals 720 px, and the mobile layout kicks in earlier.'),
  ('css-min-container', 'es', '¿Qué hace `width: min(40rem, calc(100% - 2rem)); margin: 0 auto;`?', '["Fuerza siempre 40rem de ancho, aunque la pantalla sea más estrecha que eso","Ocupa siempre la pantalla menos 2rem, sin ningún tope de ancho máximo","Ocupa hasta 40rem (o la pantalla menos 2rem, si es menor) y se centra","Elige el valor mayor de los dos y alinea la caja a la izquierda"]'::jsonb, '`min()` devuelve el menor de los valores: en pantallas grandes la caja no pasa de 40rem, y en pequeñas se queda 1rem más corta que la pantalla a cada lado. `margin: 0 auto` reparte el espacio sobrante y la centra.'),
  ('css-min-container', 'en', 'What does `width: min(40rem, calc(100% - 2rem)); margin: 0 auto;` do?', '["It always forces 40rem of width, even if the screen is narrower than that","It always fills the screen minus 2rem, with no maximum width cap","It fills up to 40rem (or the screen minus 2rem, if smaller) and centers","It picks the larger of the two values and left-aligns the box"]'::jsonb, '`min()` returns the smaller value: on large screens the box does not exceed 40rem, and on small ones it stays 1rem shorter than the screen on each side. `margin: 0 auto` splits the leftover space and centers it.'),
  ('css-current-color', 'es', 'Un botón tiene `color: green; border: 2px solid currentColor;`. ¿De qué color es el borde?', '["Negro, que es el color de borde que aplica el navegador cuando no se indica otro","Verde, el color de texto del propio elemento","Transparente, porque `currentColor` no es un valor válido en la propiedad `border`","Del color de fondo de la página, porque lo hereda del elemento raíz"]'::jsonb, '`currentColor` es una palabra clave que vale lo mismo que la propiedad `color` del elemento. Si cambias el color del texto, el borde cambia con él sin tocar nada más.'),
  ('css-current-color', 'en', 'A button has `color: green; border: 2px solid currentColor;`. What color is the border?', '["Black, which is the border color the browser applies when none is given","Green, the element''s own text color","Transparent, because `currentColor` is not a valid value in the `border` property","The page''s background color, because it inherits it from the root element"]'::jsonb, '`currentColor` is a keyword that equals the element''s `color` property. If you change the text color, the border changes with it without touching anything else.'),
  ('css-em-padding', 'es', 'Un botón tiene `font-size: 20px` y `padding: 0.5em 1em`. ¿Cuánto relleno vertical y horizontal tiene?', '["5 px y 10 px","8 px y 16 px","20 px y 40 px","10 px y 20 px"]'::jsonb, 'En `padding`, `em` es relativa al `font-size` del propio elemento: 0,5 × 20 px son 10 px (vertical) y 1 × 20 px son 20 px (horizontal). Así el relleno escala con el texto del botón.'),
  ('css-em-padding', 'en', 'A button has `font-size: 20px` and `padding: 0.5em 1em`. How much vertical and horizontal padding does it have?', '["5 px and 10 px","8 px and 16 px","20 px and 40 px","10 px and 20 px"]'::jsonb, 'In `padding`, `em` is relative to the element''s own `font-size`: 0.5 × 20 px is 10 px (vertical) and 1 × 20 px is 20 px (horizontal). That way the padding scales with the button''s text.'),
  ('css-em-nesting', 'es', 'Dentro de un contenedor con letra de 16 px hay un `div` con `font-size: 1.5em` y, dentro de él, otro `div` con `font-size: 1.5em`. ¿Cuánto mide la letra del `div` interior?', '["36 px: en `font-size`, `em` se calcula sobre el padre y se acumula","24 px, el mismo tamaño que el `div` exterior, porque `em` no se acumula entre niveles","16 px, el tamaño de letra del contenedor, porque se hereda sin cambios","1,5 px, porque `em` multiplica el número escrito por un píxel"]'::jsonb, 'El `div` exterior mide 1,5 × 16 = 24 px, y el interior 1,5 × 24 = 36 px. En `font-size`, `em` se calcula sobre el padre, así que se multiplica en cada nivel. Para tamaños de letra se prefiere `rem`, que no se acumula.'),
  ('css-em-nesting', 'en', 'Inside a 16 px container there is a `div` with `font-size: 1.5em` and, inside it, another `div` with `font-size: 1.5em`. How large is the inner `div`''s text?', '["36 px: in `font-size`, `em` is based on the parent and compounds","24 px, the same size as the outer `div`, because `em` does not compound across levels","16 px, the container''s font size, because it is inherited unchanged","1.5 px, because `em` multiplies the written number by one pixel"]'::jsonb, 'The outer `div` is 1.5 × 16 = 24 px, and the inner one 1.5 × 24 = 36 px. In `font-size`, `em` is based on the parent, so it multiplies at each level. `rem`, which does not compound, is preferred for font sizes.'),
  ('css-border-box', 'es', '¿Qué efecto tiene `box-sizing: border-box` sobre un elemento con `width` y `padding`?', '["El `width` mide solo el contenido, y el relleno y el borde se suman fuera de él","Elimina el borde de todos los elementos de la página donde se aplique la regla","El `width` incluye relleno y borde, así que el ancho total es el escrito","Solo afecta a los elementos que usan `display: flex` como contenedor o como hijo"]'::jsonb, 'Con `content-box` (el valor por defecto) el `width` mide solo el contenido y el relleno y el borde se suman, así que la caja ocupa más de lo escrito. Con `border-box`, el `width` incluye todo. Casi todos los proyectos lo aplican a `*`.'),
  ('css-border-box', 'en', 'What effect does `box-sizing: border-box` have on an element with `width` and `padding`?', '["`width` measures only the content, and padding and border add outside it","It removes the border from every element on the page where the rule applies","`width` includes padding and border, so the total width is the written one","It only affects elements that use `display: flex` as a container or as a child"]'::jsonb, 'With `content-box` (the default) `width` measures only the content and padding and border add to it, so the box takes up more than written. With `border-box`, `width` includes everything. Almost every project applies it to `*`.'),
  ('css-flex-order-a11y', 'es', 'Con la propiedad `order` en un contenedor flex cambias la posición visual de un elemento. ¿Qué orden sigue un lector de pantalla?', '["El orden visual, ya cambiado por `order`, que es el que ve el usuario","El orden del HTML, no el visual, aunque `order` lo cambie","Alfabético, según el texto de cada elemento de la lista","Aleatorio: depende del lector de pantalla y de su versión"]'::jsonb, '`order` solo cambia cómo se ve. El árbol de accesibilidad y el orden de tabulación siguen el orden del HTML. Por eso conviene no abusar de `order`: puede hacer que lo que se ve y lo que se lee no coincidan.'),
  ('css-flex-order-a11y', 'en', 'With the `order` property in a flex container you change an element''s visual position. What order does a screen reader follow?', '["The visual order, already changed by `order`, which is what the user sees","The HTML order, not the visual one, even if `order` changes it","Alphabetical, according to the text of each element in the list","Random: it depends on the screen reader and its version"]'::jsonb, '`order` only changes how things look. The accessibility tree and the tab order follow the HTML order. That is why `order` should not be overused: what is seen and what is read may not match.'),
  ('css-data-theme-bridge', 'es', 'Un botón cambia un signal `theme` en Angular. ¿Por qué hace falta un atributo como `data-theme` en `<html>`?', '["El CSS no lee signals, pero sí selecciona por atributo","Porque Angular no permite cambiar ningún estilo desde el código de TypeScript","Porque los signals no funcionan en el navegador si no existe ese atributo","Porque `data-theme` es un atributo obligatorio en HTML5 para cambiar de tema"]'::jsonb, 'El atributo es el puente entre Angular y el CSS: un `effect` lo escribe, y el CSS lo selecciona (`:root[data-theme=''light'']`) para redefinir las variables de color. Para evitar el parpadeo al cargar, un script en `index.html` lo aplica antes de pintar.'),
  ('css-data-theme-bridge', 'en', 'A button changes a `theme` signal in Angular. Why is an attribute like `data-theme` needed on `<html>`?', '["CSS cannot read signals, but it can select by attribute","Because Angular does not allow changing any style from TypeScript code","Because signals do not work in the browser unless that attribute exists","Because `data-theme` is a mandatory HTML5 attribute for switching themes"]'::jsonb, 'The attribute is the bridge between Angular and CSS: an `effect` writes it, and CSS selects it (`:root[data-theme=''light'']`) to redefine the color variables. To avoid a flash on load, a script in `index.html` applies it before painting.'),
  ('html-semantic', 'es', '¿Qué es el HTML semántico?', '["HTML escrito deliberadamente sin etiquetas de cierre para que cargue antes","HTML que usa únicamente `<div>` con clases con nombres descriptivos","Usar etiquetas que describen el significado del contenido","HTML que genera de forma automática un framework a partir de plantillas"]'::jsonb, 'Etiquetas como `header`, `nav`, `main`, `section`, `footer` o `button` dicen qué es cada cosa, no solo cómo se ve. Lectores de pantalla y buscadores se apoyan en ellas para entender la estructura. Con `<div>` todo se ve igual, pero no comunica nada.'),
  ('html-semantic', 'en', 'What is semantic HTML?', '["HTML deliberately written without closing tags so it loads sooner","HTML that uses only `<div>` with descriptively named classes","Using tags that describe the meaning of the content","HTML that a framework generates automatically from templates"]'::jsonb, 'Tags like `header`, `nav`, `main`, `section`, `footer` or `button` say what each thing is, not just how it looks. Screen readers and search engines rely on them to understand the structure. With `<div>` everything looks the same, but nothing is communicated.'),
  ('html-main-element', 'es', '¿Para qué sirve la etiqueta `<main>`?', '["Para definir el menú principal de navegación de toda la aplicación web","Para marcar el contenido principal, al que un lector de pantalla puede saltar","Para cargar el fichero de JavaScript principal con el que arranca la aplicación","Para centrar el contenido de la página en el medio de la pantalla"]'::jsonb, '`<main>` no cambia el aspecto: marca el contenido principal, distinto de la cabecera, el menú o el pie. Los lectores de pantalla tienen un atajo para saltar a él. Debe haber uno solo visible por página.'),
  ('html-main-element', 'en', 'What is the `<main>` tag for?', '["To define the main navigation menu of the entire web application","To mark the main content, which a screen reader can jump to","To load the main JavaScript file that the application starts with","To center the page''s content in the middle of the screen"]'::jsonb, '`<main>` does not change the look: it marks the main content, as distinct from the header, menu or footer. Screen readers have a shortcut to jump to it. There should be only one visible per page.'),
  ('html-button-vs-div', 'es', '¿Por qué una opción que se puede pulsar debe ser un `<button>` y no un `<div (click)>`?', '["Porque un `<div>` no admite eventos de clic en ningún navegador moderno","Porque `<button>` se pinta más rápido que un `<div>` en el navegador","No hay ninguna diferencia práctica entre usar uno u otro elemento","Porque `<button>` ya funciona con teclado y lectores de pantalla"]'::jsonb, 'Un `<button>` se puede enfocar con Tab, se activa con Enter o espacio y un lector de pantalla lo anuncia como botón. Con un `<div>` habría que añadir todo eso a mano (`tabindex`, `role`, eventos de teclado).'),
  ('html-button-vs-div', 'en', 'Why should something clickable be a `<button>` and not a `<div (click)>`?', '["Because a `<div>` does not support click events in any modern browser","Because `<button>` is painted faster than a `<div>` in the browser","There is no practical difference between using one element or the other","Because `<button>` already works with keyboards and screen readers"]'::jsonb, 'A `<button>` can be focused with Tab, is activated with Enter or space and a screen reader announces it as a button. With a `<div>` you would have to add all that by hand (`tabindex`, `role`, keyboard events).'),
  ('web-og-tags', 'es', '¿Qué son las etiquetas Open Graph (`og:title`, `og:image`)?', '["Etiquetas propias de Angular que sirven para pintar imágenes optimizadas","Cabeceras HTTP de seguridad que el servidor envía junto a cada respuesta","Metadatos del `<head>` que indican a las redes cómo mostrar un enlace","Atributos que mejoran la accesibilidad de las imágenes de la página"]'::jsonb, 'Open Graph es un protocolo (creado por Facebook) que usan LinkedIn, WhatsApp, Slack o X. Al compartir un enlace, leen `og:title`, `og:description` y `og:image` para montar la tarjeta de vista previa. La imagen debe ser una URL absoluta y pública.'),
  ('web-og-tags', 'en', 'What are Open Graph tags (`og:title`, `og:image`)?', '["Angular-specific tags used to render optimized images","Security HTTP headers the server sends along with every response","`<head>` metadata that tells social networks how to show a link","Attributes that improve the accessibility of the page''s images"]'::jsonb, 'Open Graph is a protocol (created by Facebook) used by LinkedIn, WhatsApp, Slack or X. When a link is shared, they read `og:title`, `og:description` and `og:image` to build the preview card. The image must be an absolute, public URL.'),
  ('web-og-static-html', 'es', 'En una SPA de Angular, ¿por qué las etiquetas Open Graph deben estar en el `index.html` estático?', '["Los rastreadores sociales no ejecutan JavaScript y leen el HTML inicial","Porque Angular no permite modificar el `<head>` desde el código de la aplicación","Porque solo se leen una única vez, en el momento de compilar el proyecto","Porque el `<title>` es lo único del `<head>` que se puede cambiar con TypeScript"]'::jsonb, 'El rastreador de LinkedIn pide la página y lee el HTML tal cual, sin ejecutar Angular, que es quien pinta el resto. Las etiquetas puestas con TypeScript no las vería. Para personalizarlas por ruta haría falta SSR o prerenderizado.'),
  ('web-og-static-html', 'en', 'In an Angular SPA, why must Open Graph tags be in the static `index.html`?', '["Social crawlers do not run JavaScript and read the initial HTML","Because Angular does not allow modifying the `<head>` from application code","Because they are only read once, at the moment the project is compiled","Because the `<title>` is the only part of `<head>` that TypeScript can change"]'::jsonb, 'LinkedIn''s crawler requests the page and reads the HTML as is, without running Angular, which is what paints the rest. Tags set with TypeScript would not be seen. Customizing them per route would need SSR or prerendering.'),
  ('web-canonical-domain', 'es', '¿Por qué conviene una sola dirección canónica, por ejemplo redirigir `mockinter.dev` a `www.mockinter.dev`?', '["Porque HTTPS solo funciona cuando la dirección lleva `www` delante del dominio","Evita contenido duplicado y sesiones repartidas en orígenes distintos","Porque Vercel no permite servir dos dominios distintos a la vez en un proyecto","Porque así las imágenes y el resto de recursos de la web cargan más rápido"]'::jsonb, 'Para el navegador son dos orígenes distintos. Los buscadores verían contenido duplicado, y el `localStorage` (donde Supabase guarda la sesión) es por origen: iniciar sesión en uno no vale en el otro. Se resuelve con una redirección permanente.'),
  ('web-canonical-domain', 'en', 'Why is a single canonical address preferable, for example redirecting `mockinter.dev` to `www.mockinter.dev`?', '["Because HTTPS only works when the address has `www` in front of the domain","It avoids duplicate content and sessions split across origins","Because Vercel does not allow serving two different domains in one project","Because that way images and the rest of the site''s resources load faster"]'::jsonb, 'To the browser they are two different origins. Search engines would see duplicate content, and `localStorage` (where Supabase stores the session) is per origin: logging in on one does not carry over to the other. A permanent redirect solves it.'),
  ('web-301-vs-302', 'es', '¿Qué diferencia hay entre una redirección 301 y una 302?', '["La 301 es más lenta, porque el navegador tiene que validarla dos veces","La 301 es una redirección temporal y la 302 es una permanente","La 301 es permanente y la 302 temporal, y eso afecta al SEO","Ninguna: son sinónimos y los navegadores las tratan exactamente igual"]'::jsonb, 'Una 301 dice que el recurso se ha mudado para siempre: los buscadores trasladan la reputación a la nueva URL y los navegadores pueden cachear la redirección. Una 302 es temporal, así que los buscadores mantienen la URL original.'),
  ('web-301-vs-302', 'en', 'What is the difference between a 301 and a 302 redirect?', '["A 301 is slower, because the browser has to validate it twice","A 301 is a temporary redirect and a 302 is a permanent one","A 301 is permanent and a 302 temporary, and that affects SEO","None: they are synonyms and browsers treat them exactly the same"]'::jsonb, 'A 301 says the resource has moved for good: search engines transfer ranking to the new URL and browsers may cache the redirect. A 302 is temporary, so search engines keep the original URL.'),
  ('web-x-frame-options', 'es', '¿Qué ataque ayuda a evitar la cabecera `X-Frame-Options: DENY`?', '["Clickjacking: otra web te carga en un `<iframe>` para engañar al usuario","Inyección SQL en los formularios que envían datos a la base de datos","Robo de la cookie de sesión del usuario mediante código XSS inyectado","Fuerza bruta contra la pantalla de login para adivinar contraseñas"]'::jsonb, 'En un clickjacking, otra web mete la tuya en un `<iframe>` invisible y engaña al usuario para que pulse tus botones sin saberlo. `X-Frame-Options: DENY` hace que el navegador se niegue a cargar tu web dentro de un marco.'),
  ('web-x-frame-options', 'en', 'Which attack does the `X-Frame-Options: DENY` header help prevent?', '["Clickjacking: another site loads you in an `<iframe>` to trick the user","SQL injection in forms that send data to the database","Theft of the user''s session cookie through injected XSS code","Brute force against the login screen to guess passwords"]'::jsonb, 'In clickjacking, another site embeds yours in an invisible `<iframe>` and tricks the user into pressing your buttons without knowing. `X-Frame-Options: DENY` makes the browser refuse to load your site inside a frame.'),
  ('web-spa-refresh-404', 'es', 'Una SPA desplegada sin configuración da 404 al recargar `/lesson/angular`. ¿Por qué?', '["Porque el router de Angular no funciona cuando la aplicación está en producción","Porque Vercel bloquea de forma predeterminada las rutas que contienen barras","Porque falta un certificado HTTPS válido en el dominio de la aplicación","Porque solo hay un `index.html` y el servidor busca un fichero para la ruta"]'::jsonb, 'El navegador pide `/lesson/angular` al servidor, y ese fichero no existe: solo hay un `index.html`. La solución es una regla de reescritura que sirva `index.html` para cualquier ruta sin fichero, y el router de Angular muestra la pantalla correcta.'),
  ('web-spa-refresh-404', 'en', 'An SPA deployed without configuration gives a 404 when reloading `/lesson/angular`. Why?', '["Because Angular''s router does not work when the application is in production","Because Vercel blocks routes containing slashes by default","Because a valid HTTPS certificate is missing on the application''s domain","Because only one `index.html` exists and the server looks for a file"]'::jsonb, 'The browser asks the server for `/lesson/angular`, and that file does not exist: there is only an `index.html`. The fix is a rewrite rule that serves `index.html` for any path without a file, and Angular''s router shows the right screen.'),
  ('web-open-redirect', 'es', '¿Por qué Supabase exige declarar la lista de URLs de redirección permitidas?', '["Para que el inicio de sesión resulte algo más rápido para el usuario final","Para evitar redirecciones abiertas hacia sitios maliciosos tras el login","Porque Google lo obliga a todos los proveedores que usan el protocolo OAuth","Para que Supabase pueda enviar los correos de confirmación al usuario"]'::jsonb, 'Sin esa lista, un atacante podría construir un enlace de login legítimo que, al terminar, lleve al usuario a una web falsa (*open redirect*). Solo se redirige a direcciones que has autorizado, con comodines para las rutas.'),
  ('web-open-redirect', 'en', 'Why does Supabase require declaring a list of allowed redirect URLs?', '["To make signing in somewhat faster for the end user","To prevent open redirects to malicious sites after login","Because Google forces every provider that uses the OAuth protocol to do it","So that Supabase can send confirmation emails to the user"]'::jsonb, 'Without that list, an attacker could craft a legitimate login link that, when finished, takes the user to a fake site (*open redirect*). It only redirects to addresses you authorized, with wildcards for paths.'),
  ('web-secrets-in-frontend', 'es', '¿Por qué la clave de una API de pago no puede ir en el código de una app Angular?', '["Porque Angular no admite variables de entorno en el código de la aplicación","Porque ralentiza notablemente el arranque de la aplicación en el navegador","Porque el front lo descarga el usuario y cualquiera puede leerla","Porque los navegadores bloquean las claves que son demasiado largas"]'::jsonb, 'Todo lo que va en el front, incluido lo de `environment.ts`, llega al navegador y se puede ver con F12. Un secreto debe vivir en código de servidor (una Edge Function, por ejemplo). La clave `publishable` de Supabase es la excepción: es pública por diseño y la protegen las reglas RLS.'),
  ('web-secrets-in-frontend', 'en', 'Why can a payment API key not go in an Angular app''s code?', '["Because Angular does not support environment variables in application code","Because it noticeably slows down the application''s startup in the browser","Because the front end is downloaded by the user and anyone can read it","Because browsers block keys that are too long"]'::jsonb, 'Everything in the front end, including `environment.ts`, reaches the browser and can be seen with F12. A secret must live in server code (an Edge Function, for example). Supabase''s `publishable` key is the exception: it is public by design and RLS rules protect the data.'),
  ('web-xss-innerhtml-sanitizer', 'es', '¿Qué ocurre en Angular si pintas un texto no confiable con `[innerHTML]`?', '["Angular lo muestra como texto sin interpretar, igual que con las llaves dobles","Lo interpreta como HTML, pero lo sanea y elimina lo peligroso","Lo ejecuta tal cual, incluidos los scripts y los atributos como `onerror`","Lanza un error de compilación porque no se permite ese enlace en plantillas"]'::jsonb, 'Con `{{ }}` Angular escapa todo: un `<script>` se ve como texto. Con `[innerHTML]` lo interpreta como HTML, pero antes lo pasa por el `DomSanitizer`, que elimina scripts, atributos como `onerror` y URLs `javascript:`. `bypassSecurityTrustHtml()` desactiva ese saneado: si el HTML viene de un usuario, abre la puerta a un ataque XSS.'),
  ('web-xss-innerhtml-sanitizer', 'en', 'What happens in Angular if you render untrusted text with `[innerHTML]`?', '["Angular shows it as plain text without interpreting it, just like with double braces","It interprets it as HTML, but sanitizes it and removes what is dangerous","It runs it as is, including scripts and attributes such as `onerror`","It throws a compile error because that binding is not allowed in templates"]'::jsonb, 'With `{{ }}` Angular escapes everything: a `<script>` is shown as text. With `[innerHTML]` it interprets it as HTML, but first passes it through the `DomSanitizer`, which removes scripts, attributes such as `onerror` and `javascript:` URLs. `bypassSecurityTrustHtml()` turns that sanitizing off: if the HTML comes from a user, it opens the door to an XSS attack.'),
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
```', '["It prints `1`, because the condition holds and the variable is created","It prints `undefined`, because `x` exists but has no assigned value yet","It throws a `ReferenceError`: `x` only exists inside the braces","It throws a `SyntaxError` when loading the script, before running it"]'::jsonb, '`let` and `const` have **block scope**: they only exist between the braces where they are declared, so outside them `x` is not defined (`ReferenceError`). With `var`, which is function-scoped, it would print `1`.'),
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
  ('rx-toobservable-async', 'en', 'When does `toObservable(signal)` emit a change of the signal?', '["Synchronously, on the very line where `set()` is called on the signal","Only when the component that holds the original signal is destroyed","Every second, reading the signal''s current value from an internal timer","Asynchronously, through an `effect`, not immediately after `set()`"]'::jsonb, '`toObservable` uses an `effect` under the hood, so emission is **asynchronous**: it happens when the `effect` runs, not right after `set()`. If you change the signal several times in a row, only the most recent value may be emitted.'),
  ('ng-provide-httpclient', 'es', 'En una app Angular standalone, ¿qué necesitas para poder inyectar `HttpClient`?', '["Importar `HttpClientModule` en un `AppModule`, porque no existe ninguna otra forma de registrarlo","Nada: `HttpClient` está disponible por defecto en cualquier aplicación Angular nueva","Añadir `provideHttpClient()` a los `providers` de `app.config.ts`","Instalar el paquete `@angular/http`, que contiene el cliente HTTP oficial"]'::jsonb, 'En una app standalone se registra con `provideHttpClient()` en los `providers` de `app.config.ts`, y se le pueden añadir funciones como `withInterceptors(...)` o `withFetch()`. `HttpClientModule` está obsoleto.'),
  ('ng-provide-httpclient', 'en', 'In a standalone Angular app, what do you need to be able to inject `HttpClient`?', '["Import `HttpClientModule` in an `AppModule`, because there is no other way to register it","Nothing: `HttpClient` is available by default in any new Angular application","Add `provideHttpClient()` to the `providers` of `app.config.ts`","Install the `@angular/http` package, which contains the official HTTP client"]'::jsonb, 'In a standalone app it is registered with `provideHttpClient()` in the `providers` of `app.config.ts`, and you can add features such as `withInterceptors(...)` or `withFetch()`. `HttpClientModule` is deprecated.'),
  ('ng-httpclient-returns-observable', 'es', '¿Qué devuelve `this.http.get<User[]>(''/api/users'')`?', '["Una `Promise<User[]>` que se resuelve cuando llega la respuesta del servidor","Un `Observable<User[]>` que no hace la petición hasta que alguien se suscribe","Directamente el array `User[]`, porque la petición es síncrona por defecto","Un signal `Signal<User[]>` que se rellena solo cuando llega la respuesta"]'::jsonb, '`HttpClient` devuelve Observables *cold*: la petición solo se lanza al suscribirse (con `subscribe`, la pipe `async` o `toSignal`), y se lanza una vez por cada suscripción.'),
  ('ng-httpclient-returns-observable', 'en', 'What does `this.http.get<User[]>(''/api/users'')` return?', '["A `Promise<User[]>` that resolves when the server response arrives","An `Observable<User[]>` that does not make the request until someone subscribes","The `User[]` array directly, because the request is synchronous by default","A `Signal<User[]>` signal that fills itself when the response arrives"]'::jsonb, '`HttpClient` returns *cold* Observables: the request only fires on subscribing (with `subscribe`, the `async` pipe or `toSignal`), and fires once per subscription.'),
  ('ng-httpparams-immutable', 'es', '¿Qué URL se pide con este código?

```ts
let params = new HttpParams();
params.set(''page'', 1);

this.http.get(''/api/items'', { params });
```', '["`/api/items`: `set` devuelve una instancia nueva y aquí se descarta","`/api/items?page=1`, porque `set` modifica directamente el objeto original","Ninguna, porque `HttpParams` lanza un error si no se reasigna el resultado","`/api/items?page`, sin valor, porque un número no es un `string`"]'::jsonb, '`HttpParams` (igual que `HttpHeaders` y `HttpRequest`) es **inmutable**: `set` devuelve una instancia nueva y la original no cambia. Hay que reasignar (`params = params.set(...)`) o encadenar las llamadas.'),
  ('ng-httpparams-immutable', 'en', 'What URL is requested with this code?

```ts
let params = new HttpParams();
params.set(''page'', 1);

this.http.get(''/api/items'', { params });
```', '["`/api/items`: `set` returns a new instance and here it is discarded","`/api/items?page=1`, because `set` directly modifies the original object","None, because `HttpParams` throws an error if the result is not reassigned","`/api/items?page`, with no value, because a number is not a `string`"]'::jsonb, '`HttpParams` (like `HttpHeaders` and `HttpRequest`) is **immutable**: `set` returns a new instance and the original does not change. You must reassign (`params = params.set(...)`) or chain the calls.'),
  ('ng-httpparams-append-vs-set', 'es', '¿Qué cadena de consulta generan estos dos fragmentos?

```ts
new HttpParams().append(''t'', ''a'').append(''t'', ''b'');
new HttpParams().set(''t'', ''a'').set(''t'', ''b'');
```', '["Los dos generan `t=a&t=b`, porque `set` y `append` son sinónimos","`append` genera `t=a&t=b` y `set` genera `t=b`","`append` genera `t=b` y `set` genera `t=a&t=b`","Los dos generan `t=b`, porque una clave no se puede repetir"]'::jsonb, '`append` **añade** un valor a la clave (se pueden repetir claves: `t=a&t=b`). `set` **sustituye** el valor que hubiera: el último gana (`t=b`).'),
  ('ng-httpparams-append-vs-set', 'en', 'What query string do these two snippets generate?

```ts
new HttpParams().append(''t'', ''a'').append(''t'', ''b'');
new HttpParams().set(''t'', ''a'').set(''t'', ''b'');
```', '["Both generate `t=a&t=b`, because `set` and `append` are synonyms","`append` generates `t=a&t=b` and `set` generates `t=b`","`append` generates `t=b` and `set` generates `t=a&t=b`","Both generate `t=b`, because a key cannot be repeated"]'::jsonb, '`append` **adds** a value to the key (keys can repeat: `t=a&t=b`). `set` **replaces** whatever value there was: the last one wins (`t=b`).'),
  ('ng-httpheaders-immutable', 'es', '¿Por qué este código no añade ninguna cabecera a la petición?

```ts
const headers = new HttpHeaders();
headers.set(''X-App'', ''mockinter'');

this.http.get(''/api/items'', { headers });
```', '["Porque `HttpHeaders` solo admite cabeceras estándar como `Authorization`","Porque el navegador prohíbe siempre las cabeceras personalizadas","Porque `get` ignora el campo `headers` de las opciones de la petición","Porque `set` devuelve una instancia nueva y aquí se descarta el resultado"]'::jsonb, '`HttpHeaders` es inmutable: `set` no modifica el objeto, devuelve uno nuevo. Hay que reasignar o encadenar: `new HttpHeaders().set(...)`.'),
  ('ng-httpheaders-immutable', 'en', 'Why does this code not add any header to the request?

```ts
const headers = new HttpHeaders();
headers.set(''X-App'', ''mockinter'');

this.http.get(''/api/items'', { headers });
```', '["Because `HttpHeaders` only accepts standard headers such as `Authorization`","Because the browser always forbids custom headers","Because `get` ignores the `headers` field of the request options","Because `set` returns a new instance and here the result is discarded"]'::jsonb, '`HttpHeaders` is immutable: `set` does not modify the object, it returns a new one. You must reassign or chain: `new HttpHeaders().set(...)`.'),
  ('ng-http-error-status-zero', 'es', 'Un usuario pierde la conexión a internet y falla una petición. ¿Qué `status` trae el `HttpErrorResponse`?', '["`0`: es un error de red y no hubo respuesta del servidor","`404`, porque el recurso no se ha podido encontrar en el servidor","`500`, porque el fallo ocurrió dentro del propio servidor de la API","`503`, porque el servicio está temporalmente fuera de disponibilidad"]'::jsonb, 'Cuando la petición no llega a obtener respuesta (sin conexión, CORS bloqueado, servidor caído), el `HttpErrorResponse` trae `status: 0`. Los códigos 4xx y 5xx significan que el servidor **sí** contestó.'),
  ('ng-http-error-status-zero', 'en', 'A user loses their internet connection and a request fails. What `status` does the `HttpErrorResponse` carry?', '["`0`: it is a network error and there was no server response","`404`, because the resource could not be found on the server","`500`, because the failure happened inside the API server itself","`503`, because the service is temporarily unavailable"]'::jsonb, 'When the request gets no response at all (offline, CORS blocked, server down), the `HttpErrorResponse` has `status: 0`. 4xx and 5xx codes mean the server **did** answer.'),
  ('ng-http-observe-response', 'es', '¿Qué opción necesitas en `get` para leer las cabeceras y el código de estado de la respuesta?', '["`{ responseType: ''headers'' }`, que devuelve únicamente las cabeceras","`{ observe: ''response'' }`, que devuelve la `HttpResponse` completa","`{ withCredentials: true }`, que añade información sobre la respuesta","`{ reportProgress: true }`, que incluye el estado y las cabeceras"]'::jsonb, 'Por defecto `HttpClient` solo emite el cuerpo. Con `observe: ''response''` emite la `HttpResponse` entera (cuerpo, `status`, `headers`...). `observe: ''events''` da todos los eventos, incluido el progreso.'),
  ('ng-http-observe-response', 'en', 'Which option do you need in `get` to read the response headers and status code?', '["`{ responseType: ''headers'' }`, which returns only the headers","`{ observe: ''response'' }`, which returns the full `HttpResponse`","`{ withCredentials: true }`, which adds information about the response","`{ reportProgress: true }`, which includes the status and the headers"]'::jsonb, 'By default `HttpClient` only emits the body. With `observe: ''response''` it emits the whole `HttpResponse` (body, `status`, `headers`...). `observe: ''events''` gives every event, including progress.'),
  ('ng-http-json-default', 'es', '¿Qué hace `HttpClient` por defecto con el cuerpo de una respuesta?', '["Lo devuelve como texto, y hay que llamar a `JSON.parse` a mano siempre","Lo devuelve como `Blob`, para poder descargarlo luego como un fichero","Lo interpreta como JSON y lo devuelve ya convertido en un objeto","Lo guarda en caché y devuelve solo una referencia al resultado"]'::jsonb, 'Por defecto `responseType` es `''json''`: `HttpClient` hace el `JSON.parse` por ti. Para texto, binarios o descargas se indica `responseType: ''text''` o `''blob''`.'),
  ('ng-http-json-default', 'en', 'What does `HttpClient` do by default with a response body?', '["It returns it as text, and you must always call `JSON.parse` by hand","It returns it as a `Blob`, so it can be downloaded later as a file","It parses it as JSON and returns it already converted into an object","It caches it and only returns a reference to the result"]'::jsonb, 'By default `responseType` is `''json''`: `HttpClient` does the `JSON.parse` for you. For text, binary or downloads you pass `responseType: ''text''` or `''blob''`.'),
  ('ng-http-cancel-unsubscribe', 'es', '¿Qué ocurre con una petición HTTP en curso si te das de baja de su Observable?', '["Sigue hasta el final y la respuesta se descarta cuando llega al cliente","Se pausa, y se reanuda sola cuando alguien se vuelve a suscribir después","Lanza un `HttpErrorResponse` con el estado 499 en el callback `error`","Se cancela: el navegador aborta la petición y no llega ninguna respuesta"]'::jsonb, 'Darse de baja de un Observable de `HttpClient` **cancela la petición** (el navegador la aborta). Por eso `switchMap` cancela la petición anterior cuando llega un valor nuevo y evita respuestas antiguas.'),
  ('ng-http-cancel-unsubscribe', 'en', 'What happens to an in-flight HTTP request if you unsubscribe from its Observable?', '["It carries on to the end and the response is discarded when it reaches the client","It is paused, and resumes by itself when someone subscribes again later","It throws an `HttpErrorResponse` with status 499 in the `error` callback","It is cancelled: the browser aborts the request and no response arrives"]'::jsonb, 'Unsubscribing from an `HttpClient` Observable **cancels the request** (the browser aborts it). That is why `switchMap` cancels the previous request when a new value arrives and avoids stale responses.'),
  ('ng-interceptor-clone', 'es', '¿Por qué se usa `req.clone(...)` en este interceptor en vez de modificar `req` directamente?

```ts
export const authInterceptor: HttpInterceptorFn = (req, next) => {
  const token = inject(AuthService).token();
  return next(req.clone({ setHeaders: { Authorization: ''Bearer '' + token } }));
};
```', '["Porque `req` es un `Observable` y no tiene propiedades que se puedan cambiar","Porque `HttpRequest` es inmutable: para cambiarla se crea una copia modificada","Porque `clone` envía una petición adicional de prueba antes de la petición real","Porque `req` solo se puede modificar dentro del `ngOnInit` de un componente"]'::jsonb, '`HttpRequest` (y `HttpHeaders`, `HttpParams`) es **inmutable**. Un interceptor no la modifica: crea una copia con `clone({ ... })` y pasa esa copia a `next`.'),
  ('ng-interceptor-clone', 'en', 'Why is `req.clone(...)` used in this interceptor instead of modifying `req` directly?

```ts
export const authInterceptor: HttpInterceptorFn = (req, next) => {
  const token = inject(AuthService).token();
  return next(req.clone({ setHeaders: { Authorization: ''Bearer '' + token } }));
};
```', '["Because `req` is an `Observable` and has no properties that can be changed","Because `HttpRequest` is immutable: to change it you create a modified copy","Because `clone` sends an extra test request before the real one","Because `req` can only be modified inside a component''s `ngOnInit`"]'::jsonb, '`HttpRequest` (and `HttpHeaders`, `HttpParams`) is **immutable**. An interceptor does not modify it: it creates a copy with `clone({ ... })` and passes that copy to `next`.'),
  ('ng-interceptor-register', 'es', '¿Cómo se registra un interceptor funcional en una app standalone?', '["`provideHttpClient(withInterceptors([authInterceptor]))` en `app.config.ts`","Añadiéndolo al array `declarations` de un NgModule de la aplicación","Marcando la función con un decorador `@Interceptor()` en cualquier fichero","Importándolo en el componente raíz con `imports: [authInterceptor]`"]'::jsonb, 'Se pasa a `withInterceptors([...])` dentro de `provideHttpClient(...)`. Los interceptores de clase antiguos (`HttpInterceptor`) se siguen registrando con `HTTP_INTERCEPTORS` y `withInterceptorsFromDi()`.'),
  ('ng-interceptor-register', 'en', 'How do you register a functional interceptor in a standalone app?', '["`provideHttpClient(withInterceptors([authInterceptor]))` in `app.config.ts`","By adding it to the `declarations` array of an application NgModule","By marking the function with an `@Interceptor()` decorator in any file","By importing it in the root component with `imports: [authInterceptor]`"]'::jsonb, 'You pass it to `withInterceptors([...])` inside `provideHttpClient(...)`. Old class-based interceptors (`HttpInterceptor`) are still registered with `HTTP_INTERCEPTORS` and `withInterceptorsFromDi()`.'),
  ('ng-interceptor-inject-context', 'es', '¿Por qué se puede usar `inject()` dentro de un `HttpInterceptorFn`?', '["Porque `inject()` funciona en cualquier función, se ejecute cuando se ejecute","Porque los interceptores reciben el inyector como tercer parámetro obligatorio","Porque Angular ejecuta el interceptor dentro de un contexto de inyección","Porque `HttpClient` guarda una copia del componente que lanzó la petición"]'::jsonb, 'Los interceptores funcionales se ejecutan en un contexto de inyección, así que `inject()` funciona en el cuerpo de la función. Pero no dentro de callbacks asíncronos posteriores (por ejemplo, en un `catchError`): hay que inyectar arriba.'),
  ('ng-interceptor-inject-context', 'en', 'Why can `inject()` be used inside an `HttpInterceptorFn`?', '["`inject()` works in any function, whenever it runs","Because interceptors receive the injector as a mandatory third parameter","Because Angular runs the interceptor inside an injection context","Because `HttpClient` keeps a copy of the component that fired the request"]'::jsonb, 'Functional interceptors run in an injection context, so `inject()` works in the function body. But not inside later asynchronous callbacks (for example, in a `catchError`): inject at the top.'),
  ('ng-interceptor-order', 'es', '¿En qué orden pasa una petición por los interceptores y en qué orden vuelve la respuesta?

```ts
provideHttpClient(withInterceptors([a, b, c]));
```', '["Petición: `c`, `b`, `a`; respuesta: `a`, `b`, `c`","Petición: `a`, `b`, `c`; respuesta: `c`, `b`, `a`","Petición y respuesta pasan siempre en el orden `a`, `b`, `c`","Sin orden definido: Angular los ejecuta todos en paralelo"]'::jsonb, 'Funcionan como un *middleware*: la petición atraviesa los interceptores en el orden del array (`a`, `b`, `c`) y la respuesta vuelve en orden inverso (`c`, `b`, `a`).'),
  ('ng-interceptor-order', 'en', 'In what order does a request go through the interceptors and in what order does the response come back?

```ts
provideHttpClient(withInterceptors([a, b, c]));
```', '["Request: `c`, `b`, `a`; response: `a`, `b`, `c`","Request: `a`, `b`, `c`; response: `c`, `b`, `a`","Request and response always go through in the order `a`, `b`, `c`","No defined order: Angular runs them all in parallel"]'::jsonb, 'They work like *middleware*: the request goes through the interceptors in array order (`a`, `b`, `c`) and the response comes back in reverse order (`c`, `b`, `a`).'),
  ('ng-interceptor-use-case', 'es', '¿Para qué es adecuado un interceptor HTTP?', '["Para decidir qué componente se muestra según la ruta de la aplicación","Para validar los campos de un formulario antes de enviarlos al servidor","Para guardar el estado de la interfaz entre una navegación y la siguiente","Para añadir lógica común a todas las peticiones, como la cabecera de autenticación"]'::jsonb, 'Un interceptor se ejecuta en cada petición y respuesta, así que es el sitio para lo transversal: añadir el token, gestionar errores 401 de forma global, mostrar un indicador de carga, registrar logs o reintentar.'),
  ('ng-interceptor-use-case', 'en', 'What is an HTTP interceptor suitable for?', '["Deciding which component is shown according to the application route","Validating form fields before sending them to the server","Keeping UI state between one navigation and the next","Adding common logic to every request, such as the authentication header"]'::jsonb, 'An interceptor runs on every request and response, so it is the place for cross-cutting concerns: adding the token, handling 401 errors globally, showing a loading indicator, logging or retrying.'),
  ('ng-interceptor-rethrow', 'es', '¿Por qué este interceptor termina con `throwError(() => error)`?

```ts
export const errorInterceptor: HttpInterceptorFn = (req, next) => {
  const router = inject(Router);
  return next(req).pipe(
    catchError((error: HttpErrorResponse) => {
      if (error.status === 401) {
        router.navigate([''/login'']);
      }
      return throwError(() => error);
    }),
  );
};
```', '["Para que el error siga llegando a quien hizo la petición después de gestionarlo","Para que Angular reintente la petición automáticamente tras redirigir al login","Porque `catchError` obliga siempre a lanzar un error nuevo con otro mensaje","Para convertir el error en un valor normal que `subscribe` pueda recibir"]'::jsonb, 'Si `catchError` no devolviera nada, el error se perdería y quien hizo la petición no sabría que falló. `throwError` lo **relanza**: el interceptor hace su trabajo global (redirigir en un 401) y el error sigue su camino.'),
  ('ng-interceptor-rethrow', 'en', 'Why does this interceptor end with `throwError(() => error)`?

```ts
export const errorInterceptor: HttpInterceptorFn = (req, next) => {
  const router = inject(Router);
  return next(req).pipe(
    catchError((error: HttpErrorResponse) => {
      if (error.status === 401) {
        router.navigate([''/login'']);
      }
      return throwError(() => error);
    }),
  );
};
```', '["So the error keeps reaching whoever made the request after being handled","So Angular automatically retries the request after redirecting to login","Because `catchError` always forces throwing a new error with another message","To turn the error into a normal value that `subscribe` can receive"]'::jsonb, 'If `catchError` returned nothing, the error would be lost and whoever made the request would not know it failed. `throwError` **rethrows** it: the interceptor does its global job (redirecting on a 401) and the error continues on its way.'),
  ('ng-http-withfetch', 'es', '¿Qué cambia al usar `provideHttpClient(withFetch())`?', '["Las peticiones pasan a ser síncronas y bloquean la interfaz hasta responder","`HttpClient` deja de devolver Observables y empieza a devolver `Promise`","`HttpClient` usa la API `fetch` del navegador en lugar de `XMLHttpRequest`","Se desactivan los interceptores, porque `fetch` no los admite en ningún caso"]'::jsonb, '`withFetch()` cambia la implementación interna: en vez de `XMLHttpRequest`, usa `fetch`. La API de `HttpClient` y los interceptores siguen igual. Es lo recomendado con SSR.'),
  ('ng-http-withfetch', 'en', 'What changes when using `provideHttpClient(withFetch())`?', '["Requests become synchronous and block the interface until they respond","`HttpClient` stops returning Observables and starts returning `Promise`","`HttpClient` uses the browser''s `fetch` API instead of `XMLHttpRequest`","Interceptors are disabled, because `fetch` does not support them in any case"]'::jsonb, '`withFetch()` changes the internal implementation: instead of `XMLHttpRequest`, it uses `fetch`. The `HttpClient` API and interceptors stay the same. It is recommended with SSR.'),
  ('ng-proxy-purpose', 'es', '¿Para qué sirve este `proxy.conf.json` con `ng serve`?

```json
{
  "/api": {
    "target": "http://localhost:3000",
    "secure": false
  }
}
```', '["Para cifrar con HTTPS las peticiones que envía la aplicación en producción","Para reenviar a `localhost:3000` las peticiones a `/api`, evitando problemas de CORS en desarrollo","Para que el compilador de Angular genere automáticamente el backend de la API","Para guardar en caché las respuestas de `/api` y acelerar la recarga de la página"]'::jsonb, 'El servidor de desarrollo hace de intermediario: las peticiones a `/api` salen del mismo origen que la app (`localhost:4200`) y él las reenvía a `localhost:3000`. Al navegador le parece el mismo origen, así que no hay CORS. Se activa con `ng serve --proxy-config proxy.conf.json`.'),
  ('ng-proxy-purpose', 'en', 'What is this `proxy.conf.json` for with `ng serve`?

```json
{
  "/api": {
    "target": "http://localhost:3000",
    "secure": false
  }
}
```', '["To encrypt with HTTPS the requests the application sends in production","To forward `/api` requests to `localhost:3000`, avoiding CORS problems in development","So the Angular compiler automatically generates the API backend","To cache `/api` responses and speed up page reload"]'::jsonb, 'The dev server acts as an intermediary: requests to `/api` leave from the same origin as the app (`localhost:4200`) and it forwards them to `localhost:3000`. To the browser it looks like the same origin, so there is no CORS. It is enabled with `ng serve --proxy-config proxy.conf.json`.'),
  ('ng-proxy-dev-only', 'es', '¿Funciona `proxy.conf.json` en producción?', '["Sí, `ng build` incluye el proxy dentro del paquete que se despliega","Sí, pero solo si la aplicación se despliega con HTTPS y certificado válido","Sí, siempre que el fichero esté dentro de la carpeta `public` del proyecto","No: solo lo usa el servidor de desarrollo; en producción lo resuelve el servidor o el hosting"]'::jsonb, 'El proxy es una función del servidor de desarrollo (`ng serve`). En producción no existe: hay que resolverlo en el hosting (reglas de reescritura o *rewrites*) o configurando CORS en la API.'),
  ('ng-proxy-dev-only', 'en', 'Does `proxy.conf.json` work in production?', '["Yes, `ng build` includes the proxy inside the package that gets deployed","Yes, but only if the app is deployed with HTTPS and a valid certificate","Yes, as long as the file is inside the project''s `public` folder","No: only the dev server uses it; in production the server or hosting handles it"]'::jsonb, 'The proxy is a feature of the dev server (`ng serve`). It does not exist in production: you must solve it in the hosting (rewrite rules) or by configuring CORS on the API.'),
  ('web-cors-who-enforces', 'es', '¿Quién aplica la política CORS?', '["El navegador: bloquea la respuesta si el servidor no la autoriza con cabeceras","El servidor, que rechaza cualquier petición que venga de otro dominio distinto","El compilador de Angular, al hacer `ng build` con las URLs de la API","El sistema operativo, que filtra las peticiones antes de salir a la red"]'::jsonb, 'CORS lo aplica **el navegador**. El servidor solo declara, con cabeceras como `Access-Control-Allow-Origin`, qué orígenes autoriza. Por eso el mismo servicio funciona desde `curl` o un servidor y falla en el navegador.'),
  ('web-cors-who-enforces', 'en', 'Who enforces the CORS policy?', '["The browser: it blocks the response if the server does not authorize it with headers","The server, which rejects any request coming from a different domain","The Angular compiler, when running `ng build` with the API URLs","The operating system, which filters requests before they leave to the network"]'::jsonb, 'CORS is enforced by **the browser**. The server only declares, with headers such as `Access-Control-Allow-Origin`, which origins it authorizes. That is why the same service works from `curl` or a server and fails in the browser.'),
  ('web-cors-allow-origin', 'es', '¿Qué cabecera de respuesta autoriza a un origen concreto a leer la respuesta de una API?', '["`Content-Security-Policy: allow-origin`","`X-Frame-Options: ALLOW`","`Access-Control-Allow-Origin`","`Referrer-Policy: cross-origin`"]'::jsonb, '`Access-Control-Allow-Origin: https://www.mockinter.dev` le dice al navegador que ese origen puede leer la respuesta. Con `*` se permite a cualquiera (sin credenciales).'),
  ('web-cors-allow-origin', 'en', 'Which response header authorizes a specific origin to read an API response?', '["`Content-Security-Policy: allow-origin`","`X-Frame-Options: ALLOW`","`Access-Control-Allow-Origin`","`Referrer-Policy: cross-origin`"]'::jsonb, '`Access-Control-Allow-Origin: https://www.mockinter.dev` tells the browser that origin may read the response. With `*` anyone is allowed (without credentials).'),
  ('web-cors-preflight', 'es', '¿Qué es una petición *preflight* en CORS?', '["Una petición `GET` que carga los datos antes de que el usuario los pida","Una petición `OPTIONS` que el navegador envía antes para preguntar si la real está permitida","Una copia de seguridad de la petición real que se guarda por si esta falla","Una petición que el servidor envía al navegador para comprobar su origen"]'::jsonb, 'Para peticiones "no simples" (métodos como `PUT` o `DELETE`, cabeceras como `Authorization`, o `Content-Type: application/json`), el navegador envía antes una petición `OPTIONS` preguntando si el servidor lo permite. Solo si responde que sí, envía la real.'),
  ('web-cors-preflight', 'en', 'What is a *preflight* request in CORS?', '["A `GET` request that loads the data before the user asks for it","An `OPTIONS` request the browser sends beforehand to ask whether the real one is allowed","A backup copy of the real request that is kept in case it fails","A request the server sends to the browser to check its origin"]'::jsonb, 'For "non-simple" requests (methods such as `PUT` or `DELETE`, headers such as `Authorization`, or `Content-Type: application/json`), the browser first sends an `OPTIONS` request asking whether the server allows it. Only if it says yes does it send the real one.'),
  ('web-401-vs-403', 'es', '¿Qué diferencia hay entre un código HTTP 401 y un 403?', '["El 401 significa recurso no encontrado y el 403 significa error del servidor","Ninguna: los dos indican que el usuario escribió mal su contraseña","El 401: no estás autenticado; el 403: estás autenticado, pero sin permiso","El 401 es temporal y el 403 es permanente, igual que ocurre con 302 y 301"]'::jsonb, '**401 Unauthorized** significa que no estás identificado (falta el login o el token es inválido). **403 Forbidden** significa que el servidor sabe quién eres, pero no tienes permiso para ese recurso. El "no encontrado" es el 404.'),
  ('web-401-vs-403', 'en', 'What is the difference between an HTTP 401 and a 403?', '["401 means resource not found and 403 means server error","None: both indicate the user typed their password wrong","401: you are not authenticated; 403: you are authenticated, but not permitted","401 is temporary and 403 is permanent, just like 302 and 301"]'::jsonb, '**401 Unauthorized** means you are not identified (missing login or invalid token). **403 Forbidden** means the server knows who you are, but you have no permission for that resource. "Not found" is the 404.'),
  ('web-http-idempotent', 'es', '¿Cuál de estos métodos HTTP **no** es idempotente?', '["`PUT`: repetir la misma petición deja el recurso en el mismo estado","`DELETE`: borrar dos veces el mismo recurso deja el mismo resultado final","`GET`: leer varias veces no modifica nada del recurso en el servidor","`POST`: repetirlo suele crear un recurso nuevo cada vez que se envía"]'::jsonb, 'Un método es idempotente si repetirlo da el mismo resultado final que hacerlo una vez. `GET`, `PUT` y `DELETE` lo son. `POST` no: enviarlo dos veces suele crear dos recursos. Por eso reintentar un `POST` automáticamente es peligroso.'),
  ('web-http-idempotent', 'en', 'Which of these HTTP methods is **not** idempotent?', '["`PUT`: repeating the same request leaves the resource in the same state","`DELETE`: deleting the same resource twice gives the same final result","`GET`: reading several times does not modify anything on the server resource","`POST`: repeating it usually creates a new resource each time it is sent"]'::jsonb, 'A method is idempotent if repeating it gives the same final result as doing it once. `GET`, `PUT` and `DELETE` are. `POST` is not: sending it twice usually creates two resources. That is why automatically retrying a `POST` is dangerous.'),
  ('ng-httpresource-vs-httpclient', 'es', '¿Cuándo usarías `HttpClient` en lugar de `httpResource`?', '["Para operaciones que modifican datos, como `POST`, `PUT` o `DELETE`","Nunca: `httpResource` sustituye por completo a `HttpClient` en todos los casos","Solo cuando la aplicación sea zoneless, porque `httpResource` requiere Zone.js","Para leer datos que dependen de un signal y que se recargan cuando este cambia"]'::jsonb, '`httpResource` está pensado para **leer** datos de forma reactiva: se recarga solo cuando cambian los signals de los que depende, y expone `value`, `isLoading` y `error`. Para operaciones que modifican datos (`POST`, `PUT`, `DELETE`) se usa `HttpClient`.'),
  ('ng-httpresource-vs-httpclient', 'en', 'When would you use `HttpClient` instead of `httpResource`?', '["For operations that modify data, such as `POST`, `PUT` or `DELETE`","Never: `httpResource` completely replaces `HttpClient` in every case","Only when the application is zoneless, because `httpResource` requires Zone.js","To read data that depends on a signal and reloads when it changes"]'::jsonb, '`httpResource` is designed to **read** data reactively: it reloads when the signals it depends on change, and exposes `value`, `isLoading` and `error`. For operations that modify data (`POST`, `PUT`, `DELETE`) you use `HttpClient`.'),
  ('ng-http-testing', 'es', '¿Cómo se prueba un servicio que usa `HttpClient` sin hacer peticiones reales?', '["Arrancando un servidor real en el puerto 4200 antes de cada test","Sustituyendo `HttpClient` por `localStorage` durante la ejecución de los tests","Con `provideHttpClientTesting()` y `HttpTestingController` para simular las respuestas","No se puede: los servicios HTTP solo se verifican manualmente en el navegador"]'::jsonb, '`provideHttpClientTesting()` sustituye el backend real por uno de pruebas. Con `HttpTestingController` compruebas qué petición se hizo (`expectOne`) y respondes con datos o errores falsos (`flush`).'),
  ('ng-http-testing', 'en', 'How do you test a service that uses `HttpClient` without making real requests?', '["By starting a real server on port 4200 before each test","By replacing `HttpClient` with `localStorage` while the tests run","With `provideHttpClientTesting()` and `HttpTestingController` to simulate the responses","You cannot: HTTP services can only be verified manually in the browser"]'::jsonb, '`provideHttpClientTesting()` replaces the real backend with a test one. With `HttpTestingController` you check which request was made (`expectOne`) and respond with fake data or errors (`flush`).'),
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
