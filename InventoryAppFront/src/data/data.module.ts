import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import * as register from '@src/data/repositories/user/user.register'
import * as registerValidation from '@src/data/repositories/validators/validation.register'
import { UserRepository } from '@src/domain/repositories/user.repository';
import { UserImplementationRepository } from '@src/data/repositories/user/user-implementation.repository';
import { HttpClientModule } from '@angular/common/http';
import { ValidationRepository } from 'domain/repositories/validation.repository';
import { ValidationImplementationRepository } from './repositories/validators/validation-implementation.repository';


@NgModule({
  providers: [
    register.getUserProfileUseCaseProvider,
    register.userLoginUseCaseProvider,
    register.userRegisterUseCaseProvider,
    registerValidation.userLoginUseCaseProvider,
    { provide: UserRepository, useClass: UserImplementationRepository },
    { provide: ValidationRepository, useClass: ValidationImplementationRepository }
  ],
  declarations: [],
  imports: [
    CommonModule,
    HttpClientModule
  ]
})
export class DataModule { }
