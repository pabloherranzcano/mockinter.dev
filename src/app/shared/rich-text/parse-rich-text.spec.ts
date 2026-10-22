import { parseRichText } from './parse-rich-text';

describe('parseRichText', () => {
  it('deja el texto normal en un solo bloque', () => {
    expect(parseRichText('Hola mundo')).toEqual([
      { kind: 'text', parts: [{ code: false, value: 'Hola mundo' }] },
    ]);
  });

  it('separa el código en línea', () => {
    expect(parseRichText('Usa `signal()` aquí')).toEqual([
      {
        kind: 'text',
        parts: [
          { code: false, value: 'Usa ' },
          { code: true, value: 'signal()' },
          { code: false, value: ' aquí' },
        ],
      },
    ]);
  });

  it('separa un bloque de código con su lenguaje', () => {
    const blocks = parseRichText('Antes\n```ts\nconst a = 1;\n```\nDespués');
    expect(blocks).toEqual([
      { kind: 'text', parts: [{ code: false, value: 'Antes' }] },
      { kind: 'code', lang: 'ts', code: 'const a = 1;' },
      { kind: 'text', parts: [{ code: false, value: 'Después' }] },
    ]);
  });

  it('conserva los saltos de línea y el sangrado dentro del bloque', () => {
    const [block] = parseRichText('```\nif (x) {\n  y();\n}\n```');
    expect(block).toEqual({ kind: 'code', lang: '', code: 'if (x) {\n  y();\n}' });
  });

  it('deja como texto una comilla inversa sin pareja', () => {
    const [block] = parseRichText('un `signal sin cerrar');
    expect(block).toEqual({
      kind: 'text',
      parts: [{ code: false, value: 'un `signal sin cerrar' }],
    });
  });

  it('con allowBlocks desactivado no separa los bloques de código', () => {
    const blocks = parseRichText('a\n```\nx\n```', false);
    expect(blocks.every((block) => block.kind === 'text')).toBe(true);
  });

  it('no interpreta HTML: lo trata como texto', () => {
    const [block] = parseRichText('<script>alert(1)</script>');
    expect(block).toEqual({
      kind: 'text',
      parts: [{ code: false, value: '<script>alert(1)</script>' }],
    });
  });

  it('devuelve una lista vacía con texto vacío', () => {
    expect(parseRichText('')).toEqual([]);
  });
});
