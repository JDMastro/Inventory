import { Component, OnInit } from '@angular/core';
import {
  AbstractControl,
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import { NotificationService } from '@app/services/notification/notification.service';
import { ValidateEmail } from '@app/shared/validators';
import { UserLoginUseCase } from 'domain/usecases/auth/user-login.usecase';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
})
export class LoginComponent implements OnInit {
  /**
   * Representa el formulario de login
   */
  loginForm!: FormGroup;

  /**
   * Representa si el form sea enviado la información al backend
   */
  submitted?: boolean;

  

  constructor(
    private fb: FormBuilder,
    private UserRepo: UserLoginUseCase,
    private notification: NotificationService
  ) {}
  ngOnInit(): void {
    this.loginForm = this.fb.group({
      email: new FormControl(
        'admin@localhost.com',
        [Validators.required, ValidateEmail],
        [
          /*  aqui se hace las validaciones asyncronas(api) */
        ]
      ),
      password: new FormControl('Jaime9506$', [
        Validators.required,
        Validators.minLength(6),
      ]),
    });
  }

  /**
   * Con esta función se podrá obtener cada uno de los campos
   * del formulario
   */
  get f(): { [key: string]: AbstractControl } {
    return this.loginForm.controls;
  }

  save() {
    
    this.submitted = true;
    this.UserRepo.execute(this.loginForm.value).subscribe({
      next: (v) => {
        this.notification?.onSuccessNotify('Credenciales validas', 'success');
        this.submitted = false;
        console.log(v);
      },
      error: (e) => {
        /*console.log('loginComponent',e);*/ this.submitted = false;
      },
      complete: () => console.info('complete'),
    });
  }

  /**
   * Con esta función vamos a reiniciar los valores
   * del formulario de login
   */
  private onReset(): void {
    this.submitted = false;
    this.loginForm.reset();
  }
}
