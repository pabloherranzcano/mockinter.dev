import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    path: '',
    loadComponent: () => import('./pages/home/home').then((m) => m.Home),
  },
  {
    path: 'login',
    loadComponent: () => import('./pages/login/login').then((m) => m.Login),
  },
  {
    path: 'lesson/:tech',
    loadComponent: () => import('./pages/lesson/lesson').then((m) => m.Lesson),
  },
  // {
  //   path: 'onboarding',
  //   loadComponent: LoginComponent
  // },
  // {
  //   path: 'settings',
  //   loadComponent: LoginComponent
  // },
  // {
  //   path: 'admin',
  //   loadComponent: LoginComponent
  // },
  // {
  //   path: 'reports',
  //   loadComponent: LoginComponent
  // },
  // {
  //   path: 'questions',
  //   loadComponent: LoginComponent
  // },
  // {
  //   path: 'questions/:id',
  //   loadComponent: LoginComponent
  // },
  {
    path: '**',
    loadComponent: () => import('./pages/not-found/not-found').then((m) => m.NotFound),
  },
];
