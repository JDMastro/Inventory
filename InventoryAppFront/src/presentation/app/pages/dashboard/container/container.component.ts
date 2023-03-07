import { Component } from '@angular/core';
import { Store } from '@ngrx/store';
import { State } from '@app/state/auth/auth.reducer';
import * as authSelector from '@app/state/auth/auth.selector';
import { AuthcookieService } from '@app/services/cookie/authcookie.service';

@Component({
  selector: 'app-container',
  templateUrl: './container.component.html',
  styleUrls: ['./container.component.scss'],
})
export class ContainerComponent {
  user$ = this.store.select(authSelector.selectUserInfo);


  constructor(private store: Store<State>, private cookie : AuthcookieService) {}


  cookieTest(){
    return this.cookie.getCookie()
  }
}
