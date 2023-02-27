import { Component } from '@angular/core';
import {
  AbstractControl,
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import { NotificationService } from '@app/services/notification/notification.service';
import { UserRegisterUseCase } from 'domain/usecases/auth/user-register.usecase';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss'],
})
export class RegisterComponent {
  /**
   * Representa el formulario de login
   */
  registerForm!: FormGroup;

  /**
   * Representa si el form sea enviado la información al backend
   */
  submitted?: boolean;

  constructor(
    private fb: FormBuilder,
    private UserRepo: UserRegisterUseCase,
    private notification: NotificationService
  ) {}

  ngOnInit(): void {
    this.registerForm = this.fb.group({
      email: new FormControl(
        '',
        [Validators.required, Validators.email],
        [
          /*  aqui se hace las validaciones asyncronas(api) */
        ]
      ),
      password: new FormControl('', [
        Validators.required,
        Validators.minLength(6),
      ]),
      name: new FormControl('', [Validators.required]),
      surname: new FormControl('', [Validators.required]),
    });
  }

  /**
   * Con esta función se podrá obtener cada uno de los campos
   * del formulario
   */
  get f(): { [key: string]: AbstractControl } {
    return this.registerForm.controls;
  }

  save() {
    this.submitted = true;

    setTimeout(() => {
      this.submitted = false;
      this.notification?.onErrorNotify(
        'Error en el registro',
        'Error de credenciales'
      );
    }, 5000);
  }

  /**
   * Con esta función vamos a reiniciar los valores
   * del formulario de login
   */
  private onReset(): void {
    this.submitted = false;
    this.registerForm.reset();
  }
}

/**
 * name: string;
    surname: string;
    email: string;
    password: string;
 */
