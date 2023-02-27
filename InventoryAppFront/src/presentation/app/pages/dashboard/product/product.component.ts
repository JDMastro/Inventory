import { Component } from '@angular/core';
import { NotificationService } from '@app/services/notification/notification.service';

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.scss']
})
export class ProductComponent {
  /**
   *
   */
  constructor(private notification: NotificationService) {}


  testNoti(){
    this.notification.onWarnNotify("Test Noti", "Yep, it's working :)")
  }
}
