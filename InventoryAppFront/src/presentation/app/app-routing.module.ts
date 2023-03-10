import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from '@app/guard/auth/auth.guard';

const routes: Routes = [
  {
    path: 'auth',
    loadChildren: ()=> import('./pages/auth/auth.module').then(m=> m.AuthModule),
  },
  {
    path: 'static',
    loadChildren: ()=> import('./pages/not-found/not-found.module').then(m=> m.NotFoundModule)
  },
  {
    path: 'dashboard',
    loadChildren: ()=> import('./pages/dashboard/dashboard.module').then(m=> m.DashboardModule ),
    canActivate: [AuthGuard]
  },
  {
    path: 'noconnection',
    loadChildren: ()=>  import('./pages/not-connection/not-connection.module').then(m=> m.NotConnectionModule )
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
