import { ModuleWithProviders, NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { NotificationService } from './notification.service';
import { NotificationComponent } from './components/notification/notification.component';
import {ToastModule} from 'primeng/toast';
import {MessageService} from 'primeng/api';

@NgModule({
  declarations: [
    NotificationComponent
  ],
  imports: [CommonModule, ToastModule],
  exports:[NotificationComponent]
})
export class NotificationModule {
  /**
   * Con esto hacemos de que el servicio se instancie una sola vez para cualquier llamada
   * que se haga de notificación , es como un singleton
   */
  static forRoot(): ModuleWithProviders<NotificationModule> {
    return {
      ngModule: NotificationModule,
      providers: [NotificationService, MessageService],
    };
  }
}
