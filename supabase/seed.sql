-- Datos de prueba. Se puede ejecutar varias veces: no duplica nada.

insert into public.questions (id, tech, topic, difficulty, type, correct_index, status, ref_version) values
  ('ng-signal-1',   'angular', 'signals',              'easy',   'test',  0,    'published', 'angular@22'),
  ('ng-computed-1', 'angular', 'signals',              'easy',   'test',  2,    'published', 'angular@22'),
  ('ng-effect-1',   'angular', 'signals',              'medium', 'test',  1,    'published', 'angular@22'),
  ('ng-inject-1',   'angular', 'dependency-injection', 'medium', 'test',  3,    'published', 'angular@22'),
  ('ng-router-1',   'angular', 'routing',              'medium', 'test',  0,    'published', 'angular@22'),
  ('ng-zoneless-1', 'angular', 'zoneless',             'hard',   'test',  1,    'published', 'angular@22'),
  ('ng-fill-1',     'angular', 'signals',              'easy',   'fill',  0,    'published', 'angular@22'),
  ('ng-order-1',    'angular', 'routing',              'medium', 'order', null, 'published', 'angular@22')
on conflict (id) do nothing;

insert into public.question_translations (question_id, lang, prompt, options, explanation) values
  ('ng-signal-1', 'es', '¿Cómo se lee el valor de un signal en una plantilla?',
    '["Llamándolo como función: count()", "Con el pipe async", "Con count.value", "Con count.get()"]',
    'Un signal es una función: se lee llamándolo, count(). Así Angular sabe que la plantilla depende de él.'),
  ('ng-signal-1', 'en', 'How do you read a signal value in a template?',
    '["By calling it as a function: count()", "With the async pipe", "With count.value", "With count.get()"]',
    'A signal is a function: you read it by calling it, count(). That is how Angular knows the template depends on it.'),

  ('ng-computed-1', 'es', '¿Qué característica tiene un computed?',
    '["Se puede modificar con set()", "Se ejecuta en cada detección de cambios", "Es de solo lectura y se recalcula solo cuando cambian sus dependencias", "Solo funciona dentro de un effect"]',
    'Un computed deriva su valor de otros signals, es de solo lectura y guarda el resultado hasta que una dependencia cambia.'),
  ('ng-computed-1', 'en', 'Which is a characteristic of a computed?',
    '["It can be changed with set()", "It runs on every change detection", "It is read-only and only recalculates when its dependencies change", "It only works inside an effect"]',
    'A computed derives its value from other signals, is read-only and caches the result until a dependency changes.'),

  ('ng-effect-1', 'es', '¿Para qué se debe usar un effect?',
    '["Para calcular un valor derivado de otro signal", "Para efectos secundarios, como guardar en localStorage", "Para sustituir a los inputs de un componente", "Para evitar usar computed"]',
    'Un effect sirve para efectos secundarios cuando cambia un signal. Los valores derivados van en computed.'),
  ('ng-effect-1', 'en', 'What should an effect be used for?',
    '["To compute a value derived from another signal", "For side effects, such as saving to localStorage", "To replace a component’s inputs", "To avoid using computed"]',
    'An effect is for side effects when a signal changes. Derived values belong in computed.'),

  ('ng-inject-1', 'es', '¿Dónde se puede llamar a inject()?',
    '["En cualquier método, en cualquier momento", "Solo dentro de un setTimeout", "Solo en el HTML", "En un contexto de inyección, como un inicializador de propiedad o el constructor"]',
    'inject() solo funciona mientras Angular construye la clase. Fuera de ahí lanza el error NG0203.'),
  ('ng-inject-1', 'en', 'Where can inject() be called?',
    '["In any method, at any time", "Only inside a setTimeout", "Only in the HTML", "In an injection context, such as a property initializer or the constructor"]',
    'inject() only works while Angular is constructing the class. Outside of that it throws the NG0203 error.'),

  ('ng-router-1', 'es', '¿Qué hace loadComponent con import() en una ruta?',
    '["Descarga el código de ese componente solo cuando se visita la ruta", "Carga todos los componentes al arrancar", "Convierte el componente en un servicio", "Evita que la ruta use guards"]',
    'Es lazy loading: el código del componente va en un fichero aparte que se descarga al entrar en la ruta.'),
  ('ng-router-1', 'en', 'What does loadComponent with import() do in a route?',
    '["It downloads that component’s code only when the route is visited", "It loads every component at startup", "It turns the component into a service", "It prevents the route from using guards"]',
    'It is lazy loading: the component code goes in a separate file that is downloaded when the route is entered.'),

  ('ng-zoneless-1', 'es', 'En una app zoneless, ¿qué puede hacer que una propiedad normal cambiada dentro de un setTimeout no se vea en pantalla?',
    '["Que la propiedad sea protected", "Que nadie avisa a Angular de que hay que repintar, porque no es un signal", "Que el componente use OnPush", "Que la plantilla use @for"]',
    'Sin Zone.js, Angular se entera de los cambios por signals, eventos de la plantilla o markForCheck. Un setTimeout no avisa.'),
  ('ng-zoneless-1', 'en', 'In a zoneless app, why might a plain property changed inside a setTimeout not show on screen?',
    '["Because the property is protected", "Because nothing tells Angular to re-render, since it is not a signal", "Because the component uses OnPush", "Because the template uses @for"]',
    'Without Zone.js, Angular learns about changes through signals, template events or markForCheck. A setTimeout does not notify it.'),

  ('ng-fill-1', 'es', 'Un ___ guarda un valor y avisa cuando cambia.',
    '["signal", "pipe", "servicio", "módulo"]',
    'Un signal guarda un valor y avisa a quienes lo leen cuando cambia.'),
  ('ng-fill-1', 'en', 'A ___ holds a value and notifies readers when it changes.',
    '["signal", "pipe", "service", "module"]',
    'A signal holds a value and notifies whoever reads it when it changes.'),

  ('ng-order-1', 'es', 'Ordena los pasos para leer un parámetro de ruta como signal.',
    '["Activar withComponentInputBinding() en provideRouter", "Declarar un input() con el mismo nombre que el parámetro", "Leer el valor llamando al signal en la plantilla"]',
    'El router solo rellena el input() si está activado el binding y el nombre coincide con el parámetro de la ruta.'),
  ('ng-order-1', 'en', 'Put the steps in order to read a route parameter as a signal.',
    '["Enable withComponentInputBinding() in provideRouter", "Declare an input() with the same name as the parameter", "Read the value by calling the signal in the template"]',
    'The router only fills the input() if binding is enabled and the name matches the route parameter.')
on conflict (question_id, lang) do nothing;
