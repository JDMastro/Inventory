import { Component } from '@angular/core';
import { faHouse, faSquarePlus, faSquareArrowUpRight } from '@fortawesome/free-solid-svg-icons';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.scss'],
})
export class SidebarComponent {

  faHouse = faHouse;
  faSquarePlus = faSquarePlus;
  faSquareArrowUpRight = faSquareArrowUpRight;
  
}
