// TODO (Pablo): cuando escribas wrongIds, quita el .todo y haz que pasen.
// Para probarlo sin Supabase: ProgressService.attempts es un signal, se puede rellenar con .set([...]).
describe('ProgressService.wrongIds', () => {
  it.todo('incluye una pregunta cuyo último intento fue wrong');
  it.todo('no incluye una pregunta que falló y después se acertó');
  it.todo('no repite una pregunta fallada varias veces');
});
