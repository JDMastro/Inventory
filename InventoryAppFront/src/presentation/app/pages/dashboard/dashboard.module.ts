import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DashboardRoutingModule } from './dashboard-routing.module';
import { AuthcookieService } from '@app/services/cookie/authcookie.service';


@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    DashboardRoutingModule
  ],
  providers:[
    AuthcookieService
  ]
})
export class DashboardModule { }
