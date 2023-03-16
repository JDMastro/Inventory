import { Component, EventEmitter, Input, Output } from '@angular/core';
import { faBars } from '@fortawesome/free-solid-svg-icons';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent {
  faBars = faBars;

  /**
   * Se encarga de manejar el sidebar, si abre a se cierra
   */
  @Input() handleSidebar: any



}
