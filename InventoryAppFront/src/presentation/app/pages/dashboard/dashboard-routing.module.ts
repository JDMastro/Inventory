import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ContainerComponent } from './container/container.component';

const routes: Routes = [
  {
    path : '',
    component: ContainerComponent,
    data: { animation: 'isLeft' },
    children: [
      {
        path : 'home',
        loadChildren: ()=> import('./home/home.module').then(m=> m.HomeModule ),
      },
      {
        path : 'product',
        loadChildren: ()=> import('./products/products.module').then(m => m.ProductsModule )
      },
      {
        path: '**',
        pathMatch: 'full',
        redirectTo: 'home'
      }
    ],
    
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class DashboardRoutingModule { }
