import { Observable } from 'rxjs';
import { UseCase } from '@src/base/use-case';
import { EmailValidatorModel } from 'domain/models/users/email-validator.model';
import { ValidationRepository } from '@src/domain/repositories/validation.repository';

export class CheckEmailUseCase
  implements UseCase<{ email: string }, EmailValidatorModel>
{
  constructor(private emailRepository: ValidationRepository) {}

  execute(params: { email: string }): Observable<EmailValidatorModel> {
    return this.emailRepository.emailCheck(params);
  }
}
