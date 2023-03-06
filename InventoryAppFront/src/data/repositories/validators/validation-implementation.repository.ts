import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { EmailValidatorModel } from "domain/models/users/email-validator.model";
import { ValidationRepository } from "domain/repositories/validation.repository";
import { environment } from "environments/environment";
import { map } from 'rxjs/operators';
import { Observable } from "rxjs";
import { EmailValidatorEntity } from "./entities/email-validators-entity";
import { EmailImplementationRepositoryMapper } from "./mappers/email-validator-repository.mapper";



@Injectable({
    providedIn: 'root',
  })

export class ValidationImplementationRepository extends ValidationRepository{
    emailMapper = new EmailImplementationRepositoryMapper();
    
    constructor(private http: HttpClient) {
        super();
      }

      emailCheck(params : { email : string }): Observable<EmailValidatorModel>{
        return this.http.get<EmailValidatorEntity>(`${environment.url}/Validation/Check/Email/${params.email}`)
        .pipe(map(this.emailMapper.mapFrom))
      }
  }