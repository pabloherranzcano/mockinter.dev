-- Generado por scripts/questions-to-sql.mjs. Se puede ejecutar varias veces: no duplica nada.
-- Las preguntas nuevas entran como draft. Las que ya existen se actualizan, y su estado se respeta.

insert into public.questions (id, tech, topic, difficulty, type, correct_index, status, ref_version) values
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
  ('ng-http-testing', 'angular', 'testing', 'medium', 'test', 2, 'draft', 'angular@22')
on conflict (id) do update set
    tech = excluded.tech,
    topic = excluded.topic,
    difficulty = excluded.difficulty,
    correct_index = excluded.correct_index,
    ref_version = excluded.ref_version;
  
insert into public.question_translations (question_id, lang, prompt, options, explanation) values
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
  ('ng-http-testing', 'en', 'How do you test a service that uses `HttpClient` without making real requests?', '["By starting a real server on port 4200 before each test","By replacing `HttpClient` with `localStorage` while the tests run","With `provideHttpClientTesting()` and `HttpTestingController` to simulate the responses","You cannot: HTTP services can only be verified manually in the browser"]'::jsonb, '`provideHttpClientTesting()` replaces the real backend with a test one. With `HttpTestingController` you check which request was made (`expectOne`) and respond with fake data or errors (`flush`).')
on conflict (question_id, lang) do update set
    prompt = excluded.prompt,
    options = excluded.options,
    explanation = excluded.explanation;
