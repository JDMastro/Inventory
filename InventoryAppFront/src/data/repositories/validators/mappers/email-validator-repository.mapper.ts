import { Mapper } from '@src/base/mapper';
import { EmailValidatorModel } from 'domain/models/users/email-validator.model';
import { EmailValidatorEntity } from 'data/repositories/validators/entities/email-validators-entity';

export class EmailImplementationRepositoryMapper extends Mapper<
  EmailValidatorEntity,
  EmailValidatorModel
> {
  mapFrom(param: EmailValidatorEntity): EmailValidatorModel {
    return {
      _isUnique: param.isUnique,
    };
  }
  mapTo(param: EmailValidatorModel): EmailValidatorEntity {
    return {
      isUnique: param._isUnique,
    };
  }
}
