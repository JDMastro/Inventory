import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import * as register from '@src/data/repositories/user/user.register'
import { UserRepository } from '@src/domain/repositories/user.repository';
import { UserImplementationRepository } from '@src/data/repositories/user/user-implementation.repository';
import { HttpClientModule } from '@angular/common/http';


@NgModule({
  providers: [
    register.getUserProfileUseCaseProvider,
    register.userLoginUseCaseProvider,
    register.userRegisterUseCaseProvider,
    { provide: UserRepository, useClass: UserImplementationRepository },
  ],
  declarations: [],
  imports: [
    CommonModule,
    HttpClientModule
  ]
})
export class DataModule { }
