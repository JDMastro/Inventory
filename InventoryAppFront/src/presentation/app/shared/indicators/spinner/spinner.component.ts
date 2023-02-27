import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-spinner',
  templateUrl: './spinner.component.html',
  styleUrls: ['./spinner.component.scss']
})
export class SpinnerComponent {

  /**
   * Este atributo nos indica se se muestra el spinner o no
   */
  @Input() showSpinner?: boolean;

}
