import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ErrorMessageComponent } from './error-message/error-message.component';
import { NavbarComponent } from './navbar/navbar.component';
import {ToolbarModule} from 'primeng/toolbar';
import { SidebarComponent } from './sidebar/sidebar.component';
import { AvatarModule } from 'primeng/avatar';



@NgModule({
  declarations: [ErrorMessageComponent, NavbarComponent, SidebarComponent],
  imports: [
    CommonModule,
    ToolbarModule,
    AvatarModule
  ],
  exports:[ErrorMessageComponent, NavbarComponent, SidebarComponent]
})
export class ComponentsModule { }
