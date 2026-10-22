/** En la URL, "all" significa "sin filtro": todas las tecnologías. */
const ALL = 'all';

/** En la URL, /lesson/wrong es la lección con las preguntas falladas. */
export const WRONG_PARAM = 'wrong';

/** ['angular', 'rxjs'] → 'angular,rxjs'. Una lista vacía → 'all'. */
export function techsToParam(techs: string[]): string {
  return techs.length > 0 ? techs.join(',') : ALL;
}

/** 'angular,rxjs' → ['angular', 'rxjs']. 'all' → [] (sin filtro). */
export function paramToTechs(param: string): string[] {
  if (param === ALL) {
    return [];
  }
  return param.split(',').filter((tech) => tech.length > 0);
}
