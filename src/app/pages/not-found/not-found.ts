import { Component, inject } from '@angular/core';
import { LanguageService } from '../../core/language.service';

@Component({
  imports: [],
  selector: 'app-not-found',
  styleUrl: './not-found.scss',
  templateUrl: './not-found.html',
})
export class NotFound {
  protected readonly t = inject(LanguageService).t;
}
