import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { NotConnectionComponent } from './not-connection.component';

const routes: Routes = [
  {
    path: '',
    component : NotConnectionComponent,
    data: { animation: 'isLeft' }
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class NotConnectionRoutingModule { }
