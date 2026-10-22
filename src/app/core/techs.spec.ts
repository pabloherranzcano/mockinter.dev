import { paramToTechs, techsToParam } from './techs';

describe('techs', () => {
  it('una lista vacía se convierte en "all"', () => {
    expect(techsToParam([])).toBe('all');
  });

  it('une varias tecnologías con comas', () => {
    expect(techsToParam(['angular', 'rxjs'])).toBe('angular,rxjs');
  });

  it('"all" significa sin filtro', () => {
    expect(paramToTechs('all')).toEqual([]);
  });

  it('separa por comas y funciona con los enlaces antiguos de una sola tecnología', () => {
    expect(paramToTechs('angular,rxjs')).toEqual(['angular', 'rxjs']);
    expect(paramToTechs('angular')).toEqual(['angular']);
  });

  it('ignora comas sobrantes', () => {
    expect(paramToTechs('angular,,')).toEqual(['angular']);
  });
});
