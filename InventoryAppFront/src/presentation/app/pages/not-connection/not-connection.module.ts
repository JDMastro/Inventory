import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { NotConnectionRoutingModule } from './not-connection-routing.module';
import { NotConnectionComponent } from './not-connection.component';

@NgModule({
  declarations: [
    NotConnectionComponent
  ],
  imports: [
    CommonModule,
    NotConnectionRoutingModule
  ]
})
export class NotConnectionModule { }
