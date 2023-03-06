import { Observable } from 'rxjs';
import { EmailValidatorModel } from 'domain/models/users/email-validator.model';


/**
 * Esta clase representa el validatorRepository
 * @version 1.0.0 2023-02-28
 * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
 * @since 1.0.0
 */
export abstract class ValidationRepository {
    abstract emailCheck(params : { email : string }): Observable<EmailValidatorModel>;
}