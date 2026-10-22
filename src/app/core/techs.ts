/** En la URL, "all" significa "sin filtro": todas las tecnologías. */
const ALL = 'all';

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
