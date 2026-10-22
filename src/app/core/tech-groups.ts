/** Los grupos en el orden en que se muestran en la Home. */
export const GROUPS = ['frontend', 'backend', 'data', 'tools', 'other'] as const;

export type Group = (typeof GROUPS)[number];

/**
 * A qué grupo pertenece cada tecnología. Cuando llegue una tecnología nueva
 * (node, java...), basta con añadir una línea aquí. Si falta, cae en "other"
 * y no se pierde.
 */
const TECH_GROUP: Record<string, Group> = {
  angular: 'frontend',
  rxjs: 'frontend',
  javascript: 'frontend',
  typescript: 'frontend',
  html: 'frontend',
  css: 'frontend',
  web: 'frontend',
  node: 'backend',
  java: 'backend',
  spring: 'backend',
  databases: 'data',
  sql: 'data',
  architecture: 'tools',
  git: 'tools',
  devops: 'tools',
};

export function groupOf(tech: string): Group {
  return TECH_GROUP[tech] ?? 'other';
}
