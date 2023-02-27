import { Observable } from 'rxjs';
import { UseCase } from '@src/base/use-case';
import { UserModel } from '@src/domain/models/user.model';
import { UserRepository } from '@src/domain/repositories/user.repository';

export class UserLoginUseCase
  implements UseCase<{ email: string; password: string }, UserModel>
{
  constructor(private userRepository: UserRepository) {}

  execute(params: {
    email: string;
    password: string;
  }): Observable<UserModel> {
    return this.userRepository.login(params);
  }
}
