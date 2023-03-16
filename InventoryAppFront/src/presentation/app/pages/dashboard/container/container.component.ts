import { Component } from '@angular/core';
import { Store } from '@ngrx/store';
import { State } from '@app/state/auth/auth.reducer';
import * as authSelector from '@app/state/auth/auth.selector';
@Component({
  selector: 'app-container',
  templateUrl: './container.component.html',
  styleUrls: ['./container.component.scss'],
})
export class ContainerComponent {
  user$ = this.store.select(authSelector.selectUserInfo);

  closeSidebar: boolean;

  constructor(private store: Store<State>) {
    this.closeSidebar = false
  }

  handleSidebar = () => {
    this.closeSidebar = !this.closeSidebar;
  };

  closeSideBarByMenu = () => {
    this.closeSidebar = false;
  };
}
