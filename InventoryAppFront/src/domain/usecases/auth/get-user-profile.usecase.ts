import { Observable } from 'rxjs';
import { UseCase } from '@src/base/use-case';
import { UserModel } from '@src/domain/models/user.model';
import { UserRepository } from '@src/domain/repositories/user.repository';

export class GetUserProfileUseCase implements UseCase<void, UserModel> {
  constructor(private userRepository: UserRepository) {}

  execute(): Observable<UserModel> {
    return this.userRepository.getUserProfile();
  }
}
