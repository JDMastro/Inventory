import {
  AbstractControl,
  AsyncValidatorFn,
  ValidationErrors,
} from '@angular/forms';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { CheckEmailUseCase } from '@src/domain/usecases/validation/check-email.usecase';
import { EmailValidatorModel } from 'domain/models/email-validator.model';

/**
 * Representa la validación del correo
 */
const emailPattern =
  /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

/**
 * Esta función válida de que el formato del correo
 * sea correcto
 * @param control Representa el input del formulario al cual queremos aplicarle la validadión
 * @returns nos puede retornar un objeto { email : true } que nos indica que el control no tiene el
 * formato de correo que queremos y cuando es null es porque esta correcto
 */

export function ValidateEmail(
  control: AbstractControl
): { [key: string]: boolean } | any {
  const match = control.value.match(emailPattern);
  return match ? null : { email: true }
}

export function UniqueEmail(emailService : CheckEmailUseCase) : AsyncValidatorFn {
  return (control: AbstractControl): Observable<ValidationErrors | any> => {
    return emailService.execute({ email : control.value })
     .pipe(map((result : EmailValidatorModel) => !result._isUnique ? null : { isUnique: true }
    ))
  }
}