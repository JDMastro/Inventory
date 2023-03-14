import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ErrorMessageComponent } from './error-message/error-message.component';
import { NavbarComponent } from './navbar/navbar.component';
import {ToolbarModule} from 'primeng/toolbar';
import { SidebarComponent } from './sidebar/sidebar.component';
import { AvatarModule } from 'primeng/avatar';
import { RouterModule } from '@angular/router';

import {  FontAwesomeModule } from '@fortawesome/angular-fontawesome';



@NgModule({
  declarations: [ErrorMessageComponent, NavbarComponent, SidebarComponent],
  imports: [
    CommonModule,
    ToolbarModule,
    AvatarModule,
    RouterModule,
    FontAwesomeModule
  ],
  exports:[ErrorMessageComponent, NavbarComponent, SidebarComponent]
})
export class ComponentsModule { }
