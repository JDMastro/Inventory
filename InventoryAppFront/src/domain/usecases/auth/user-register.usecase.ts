import { Observable } from 'rxjs';
import { UseCase } from '@src/base/use-case';
import { UserModel } from '@src/domain/models/users/user.model';
import { UserRepository } from '@src/domain/repositories/user.repository';

export class UserRegisterUseCase
  implements
    UseCase<
      { name: string; surname: string; email: string; password: string },
      UserModel
    >
{
  constructor(private userRepository: UserRepository) {}

  execute(params: {
    name: string;
    surname: string;
    email: string;
    password: string;
  }): Observable<UserModel> {
    return this.userRepository.register(params);
  }
}
