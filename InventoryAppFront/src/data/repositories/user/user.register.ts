import { UserRepository } from '@src/domain/repositories/user.repository';
import { UserLoginUseCase } from '@src/domain/usecases/auth/user-login.usecase';
import { UserRegisterUseCase } from '@src/domain/usecases/auth/user-register.usecase';
import { GetUserProfileUseCase } from '@src/domain/usecases/auth/get-user-profile.usecase';


const userLoginUseCaseFactory = 
(userRepo: UserRepository) => new UserLoginUseCase(userRepo);
export const userLoginUseCaseProvider = {
    provide: UserLoginUseCase,
    useFactory: userLoginUseCaseFactory,
    deps: [UserRepository],
};

const userRegisterUseCaseFactory = 
(userRepo: UserRepository) => new UserRegisterUseCase(userRepo);
export const userRegisterUseCaseProvider = {
    provide: UserRegisterUseCase,
    useFactory: userRegisterUseCaseFactory,
    deps: [UserRepository],
};

const getUserProfileUseCaseFactory = 
(userRepo: UserRepository) => new GetUserProfileUseCase(userRepo);
export const getUserProfileUseCaseProvider = {
    provide: GetUserProfileUseCase,
    useFactory: getUserProfileUseCaseFactory,
    deps: [UserRepository],
};