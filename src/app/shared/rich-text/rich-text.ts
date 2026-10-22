import { NgTemplateOutlet } from '@angular/common';
import { booleanAttribute, Component, computed, input } from '@angular/core';
import { parseRichText } from './parse-rich-text';

/** Pinta texto con `código en línea` y bloques de código, sin usar innerHTML. */
@Component({
  imports: [NgTemplateOutlet],
  selector: 'app-rich-text',
  styleUrl: './rich-text.scss',
  templateUrl: './rich-text.html',
})
export class RichText {
  readonly text = input.required<string>();
  /** En línea: sin párrafos ni bloques, para usarlo dentro de un botón. */
  readonly inline = input(false, { transform: booleanAttribute });

  protected readonly blocks = computed(() => parseRichText(this.text(), !this.inline()));
}
