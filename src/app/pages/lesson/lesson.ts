import { Component, input } from '@angular/core';

@Component({
  imports: [],
  selector: 'app-lesson',
  styleUrl: './lesson.scss',
  templateUrl: './lesson.html',
})
export class Lesson {
  topicId = input.required<string>();
}
