export interface TextPart {
  /** true si va entre comillas inversas: se pinta como código en línea */
  code: boolean;
  value: string;
}

export type RichBlock =
  | { kind: 'code'; lang: string; code: string }
  | { kind: 'text'; parts: TextPart[] };

/**
 * Parte el texto de una pregunta en bloques: párrafos con código en línea (`así`)
 * y bloques de código entre ``` ``` ```. Con `allowBlocks: false` los bloques no se
 * separan (útil dentro de un botón, donde no cabe un <pre>).
 */
export function parseRichText(text: string, allowBlocks = true): RichBlock[] {
  const blocks: RichBlock[] = [];

  const pushText = (chunk: string) => {
    const trimmed = chunk.replace(/^\n+|\n+$/g, '');
    if (trimmed) {
      blocks.push({ kind: 'text', parts: inlineParts(trimmed) });
    }
  };

  if (!allowBlocks) {
    pushText(text);
    return blocks;
  }

  const fence = /```([a-z]*)\n([\s\S]*?)```/g;
  let last = 0;
  let match: RegExpExecArray | null;
  while ((match = fence.exec(text)) !== null) {
    pushText(text.slice(last, match.index));
    blocks.push({ kind: 'code', lang: match[1], code: match[2].replace(/\n$/, '') });
    last = match.index + match[0].length;
  }
  pushText(text.slice(last));
  return blocks;
}

/** Separa por comillas inversas: los trozos en posición impar son código. */
function inlineParts(text: string): TextPart[] {
  const pieces = text.split('`');
  // Número impar de comillas: la última no tiene pareja y se deja como texto
  if (pieces.length % 2 === 0) {
    const unmatched = pieces.pop() ?? '';
    pieces[pieces.length - 1] += '`' + unmatched;
  }
  return pieces
    .map((value, index) => ({ code: index % 2 === 1, value }))
    .filter((part) => part.value !== '');
}
