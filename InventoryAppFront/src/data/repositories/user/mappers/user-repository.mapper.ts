import { Mapper } from '@src/base/mapper';
import { UserModel } from '@src/domain/models/user.model';
import { UserEntity } from '@src/data/repositories/user/entities/user-entity';

export class UserImplementationRepositoryMapper extends Mapper<
  UserEntity,
  UserModel
> {
  mapFrom(param: UserEntity): UserModel {
    return {
      _id: param.id,
      _email: param.email,
      _token: param.token,
      _username: param.username,
    };
  }
  mapTo(param: UserModel): UserEntity {
    return {
      id: param._id,
      email: param._email,
      token: param._token,
      username: param._username,
    };
  }
}
