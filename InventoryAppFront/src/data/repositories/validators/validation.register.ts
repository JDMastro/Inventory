import { ValidationRepository } from '@src/domain/repositories/validation.repository';
import { CheckEmailUseCase } from '@src/domain/usecases/validation/check-email.usecase';


const checkEmailUseCaseFactory = 
(userRepo: ValidationRepository) => new CheckEmailUseCase(userRepo);
export const userLoginUseCaseProvider = {
    provide: CheckEmailUseCase,
    useFactory: checkEmailUseCaseFactory,
    deps: [ValidationRepository],
};