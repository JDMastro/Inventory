import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: 'auth',
    loadChildren: ()=> import('./pages/auth/auth.module').then(m=> m.AuthModule)
  },
  {
    path: 'static',
    loadChildren: ()=> import('./pages/not-found/not-found.module').then(m=> m.NotFoundModule)
  },
  {
    path: 'dashboard',
    loadChildren: ()=> import('./pages/dashboard/dashboard.module').then(m=> m.DashboardModule )
  },
  {
    path: '',
    pathMatch : 'full',
    redirectTo: 'auth/signin'
  },
  {
    path: '**',
    pathMatch: 'full',
    redirectTo: 'static/404'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
