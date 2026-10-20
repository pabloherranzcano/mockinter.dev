import { Question } from './question';

export const QUESTIONS_MOCK: Question[] = [
  {
    id: 'ng-signal-1',
    tech: 'angular',
    topic: 'signals',
    difficulty: 'easy',
    correctIndex: 0,
    text: {
      es: {
        prompt: '¿Cómo se lee el valor de un signal en una plantilla?',
        options: ['Llamándolo como función: count()', 'Con el pipe async', 'Con count.value', 'Con count.get()'],
        explanation: 'Un signal es una función: se lee llamándolo, count(). Así Angular sabe que la plantilla depende de él.',
      },
      en: {
        prompt: 'How do you read a signal value in a template?',
        options: ['By calling it as a function: count()', 'With the async pipe', 'With count.value', 'With count.get()'],
        explanation: 'A signal is a function: you read it by calling it, count(). That is how Angular knows the template depends on it.',
      },
    },
  },
  {
    id: 'ng-computed-1',
    tech: 'angular',
    topic: 'signals',
    difficulty: 'easy',
    correctIndex: 2,
    text: {
      es: {
        prompt: '¿Qué característica tiene un computed?',
        options: [
          'Se puede modificar con set()',
          'Se ejecuta en cada detección de cambios',
          'Es de solo lectura y se recalcula solo cuando cambian sus dependencias',
          'Solo funciona dentro de un effect',
        ],
        explanation: 'Un computed deriva su valor de otros signals, es de solo lectura y guarda el resultado hasta que una dependencia cambia.',
      },
      en: {
        prompt: 'Which is a characteristic of a computed?',
        options: [
          'It can be changed with set()',
          'It runs on every change detection',
          'It is read-only and only recalculates when its dependencies change',
          'It only works inside an effect',
        ],
        explanation: 'A computed derives its value from other signals, is read-only and caches the result until a dependency changes.',
      },
    },
  },
  {
    id: 'ng-effect-1',
    tech: 'angular',
    topic: 'signals',
    difficulty: 'medium',
    correctIndex: 1,
    text: {
      es: {
        prompt: '¿Para qué se debe usar un effect?',
        options: [
          'Para calcular un valor derivado de otro signal',
          'Para efectos secundarios, como guardar en localStorage',
          'Para sustituir a los inputs de un componente',
          'Para evitar usar computed',
        ],
        explanation: 'Un effect sirve para efectos secundarios cuando cambia un signal. Los valores derivados van en computed.',
      },
      en: {
        prompt: 'What should an effect be used for?',
        options: [
          'To compute a value derived from another signal',
          'For side effects, such as saving to localStorage',
          'To replace a component’s inputs',
          'To avoid using computed',
        ],
        explanation: 'An effect is for side effects when a signal changes. Derived values belong in computed.',
      },
    },
  },
  {
    id: 'ng-inject-1',
    tech: 'angular',
    topic: 'dependency-injection',
    difficulty: 'medium',
    correctIndex: 3,
    text: {
      es: {
        prompt: '¿Dónde se puede llamar a inject()?',
        options: [
          'En cualquier método, en cualquier momento',
          'Solo dentro de un setTimeout',
          'Solo en el HTML',
          'En un contexto de inyección, como un inicializador de propiedad o el constructor',
        ],
        explanation: 'inject() solo funciona mientras Angular construye la clase. Fuera de ahí lanza el error NG0203.',
      },
      en: {
        prompt: 'Where can inject() be called?',
        options: [
          'In any method, at any time',
          'Only inside a setTimeout',
          'Only in the HTML',
          'In an injection context, such as a property initializer or the constructor',
        ],
        explanation: 'inject() only works while Angular is constructing the class. Outside of that it throws the NG0203 error.',
      },
    },
  },
  {
    id: 'ng-router-1',
    tech: 'angular',
    topic: 'routing',
    difficulty: 'medium',
    correctIndex: 0,
    text: {
      es: {
        prompt: '¿Qué hace loadComponent con import() en una ruta?',
        options: [
          'Descarga el código de ese componente solo cuando se visita la ruta',
          'Carga todos los componentes al arrancar',
          'Convierte el componente en un servicio',
          'Evita que la ruta use guards',
        ],
        explanation: 'Es lazy loading: el código del componente va en un fichero aparte que se descarga al entrar en la ruta.',
      },
      en: {
        prompt: 'What does loadComponent with import() do in a route?',
        options: [
          'It downloads that component’s code only when the route is visited',
          'It loads every component at startup',
          'It turns the component into a service',
          'It prevents the route from using guards',
        ],
        explanation: 'It is lazy loading: the component code goes in a separate file that is downloaded when the route is entered.',
      },
    },
  },
  {
    id: 'ng-zoneless-1',
    tech: 'angular',
    topic: 'zoneless',
    difficulty: 'hard',
    correctIndex: 1,
    text: {
      es: {
        prompt: 'En una app zoneless, ¿qué puede hacer que una propiedad normal cambiada dentro de un setTimeout no se vea en pantalla?',
        options: [
          'Que la propiedad sea protected',
          'Que nadie avisa a Angular de que hay que repintar, porque no es un signal',
          'Que el componente use OnPush',
          'Que la plantilla use @for',
        ],
        explanation: 'Sin Zone.js, Angular se entera de los cambios por signals, eventos de la plantilla o markForCheck. Un setTimeout no avisa.',
      },
      en: {
        prompt: 'In a zoneless app, why might a plain property changed inside a setTimeout not show on screen?',
        options: [
          'Because the property is protected',
          'Because nothing tells Angular to re-render, since it is not a signal',
          'Because the component uses OnPush',
          'Because the template uses @for',
        ],
        explanation: 'Without Zone.js, Angular learns about changes through signals, template events or markForCheck. A setTimeout does not notify it.',
      },
    },
  },
];
