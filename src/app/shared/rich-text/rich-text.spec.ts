import { ComponentFixture, TestBed } from '@angular/core/testing';
import { RichText } from './rich-text';

describe('RichText', () => {
  let fixture: ComponentFixture<RichText>;

  const render = async (text: string, inline = false) => {
    fixture.componentRef.setInput('text', text);
    fixture.componentRef.setInput('inline', inline);
    await fixture.whenStable();
    return fixture.nativeElement as HTMLElement;
  };

  beforeEach(async () => {
    await TestBed.configureTestingModule({ imports: [RichText] }).compileComponents();
    fixture = TestBed.createComponent(RichText);
  });

  it('pinta el código en línea dentro de un párrafo', async () => {
    const element = await render('Usa `signal()` aquí');
    expect(element.querySelector('p code')?.textContent).toBe('signal()');
    expect(element.querySelector('p')?.textContent).toBe('Usa signal() aquí');
  });

  it('pinta un bloque de código con su sangrado', async () => {
    const element = await render('Mira:\n```ts\nif (x) {\n  y();\n}\n```');
    expect(element.querySelector('pre.code code')?.textContent).toBe('if (x) {\n  y();\n}');
  });

  it('en modo línea no crea párrafos ni bloques', async () => {
    const element = await render('un `valor`', true);
    expect(element.querySelector('p')).toBeNull();
    expect(element.querySelector('code')?.textContent).toBe('valor');
  });

  it('no interpreta HTML: lo enseña como texto', async () => {
    const element = await render('<img src=x onerror=alert(1)> y `<script>alert(1)</script>`');
    expect(element.querySelector('img')).toBeNull();
    expect(element.querySelector('script')).toBeNull();
    expect(element.textContent).toContain('<img src=x onerror=alert(1)>');
  });
});
