import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { HttpClient } from '@angular/common/http';
import { UserEntity } from '@src/data/repositories/user/entities/user-entity';
import { UserImplementationRepositoryMapper } from '@src/data/repositories/user/mappers/user-repository.mapper';
import { UserRepository } from '@src/domain/repositories/user.repository';
import { UserModel } from '@src/domain/models/users/user.model';
import { environment } from 'environments/environment';

@Injectable({
  providedIn: 'root',
})
export class UserImplementationRepository extends UserRepository {
  userMapper = new UserImplementationRepositoryMapper();

  constructor(private http: HttpClient) {
    super();
  }

  login(params: { email: string; password: string }): Observable<UserModel> {
    
    return this.http
      .post<UserEntity>(`${environment.url}/Account/Login`, { ...params })
      .pipe(map(this.userMapper.mapFrom));
  }
  register(params: {
    name: string;
    surname: string;
    email: string;
    password: string;
  }): Observable<UserModel> {
    return this.http
      .post<UserEntity>(`${environment.url}/Account/Register`, { ...params })
      .pipe(map(this.userMapper.mapFrom));
  }
  getUserProfile(): Observable<UserModel> {
    return this.http
      .get<UserEntity>('/user/me')
      .pipe(map(this.userMapper.mapFrom));
  }

}
