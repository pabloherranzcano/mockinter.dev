import { groupOf } from './tech-groups';

describe('groupOf', () => {
  it('devuelve el grupo de una tecnología conocida', () => {
    expect(groupOf('angular')).toBe('frontend');
    expect(groupOf('databases')).toBe('data');
  });

  it('una tecnología sin grupo cae en "other"', () => {
    expect(groupOf('cobol')).toBe('other');
  });
});
