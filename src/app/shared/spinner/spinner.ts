import { Component, input } from '@angular/core';

@Component({
  selector: 'app-spinner',
  styleUrl: './spinner.scss',
  templateUrl: './spinner.html',
})
export class Spinner {
  /** El texto que acompaña a los puntos, p. ej. "Preparando la lección…". */
  label = input.required<string>();
}
