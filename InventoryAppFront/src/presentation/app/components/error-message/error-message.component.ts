import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-error-message',
  templateUrl: './error-message.component.html',
  styleUrls: ['./error-message.component.scss']
})
export class ErrorMessageComponent {
  /**
   * Representa el mensaje que se quiere mostrar
   */
  @Input() errorMessage? : string

  /**
   * Representa si el mensaje se va a mostrar
   */
  @Input() show? : boolean
}
