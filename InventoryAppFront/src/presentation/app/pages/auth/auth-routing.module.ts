import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: 'signin',
    loadChildren: () =>
      import('./login/login.module').then((m) => m.LoginModule),
      data: { animation: 'isLeft' }
  },
  {
    path: 'signup',
    loadChildren: () =>
      import('./register/register.module').then((m) => m.RegisterModule),
      /*data: { animation: 'isRight' }*/
      data: { animation: 'isLeft' }
  },
  {
    path: '**',
    pathMatch: 'full',
    redirectTo: 'signin',
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AuthRoutingModule {}
