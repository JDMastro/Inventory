import { Component } from '@angular/core';
import {
  AbstractControl,
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import { NotificationService } from '@app/services/notification/notification.service';
import { UniqueEmail } from '@app/shared/validators';
import { UserRegisterUseCase } from 'domain/usecases/auth/user-register.usecase';
import { CheckEmailUseCase } from 'domain/usecases/validation/check-email.usecase';

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
    private emailCheck: CheckEmailUseCase,
    private notificationService: NotificationService
  ) {}

  ngOnInit(): void {
    this.registerForm = this.fb.group({
      email: new FormControl('', {
        validators: [
          Validators.required,
          Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,4}$'),
        ],
        asyncValidators: [UniqueEmail(this.emailCheck)],
        //updateOn: 'blur',
      }),
      password: new FormControl('', {
        validators: [Validators.required, Validators.minLength(6)],
        asyncValidators: [],
      }),
      name: new FormControl('', {
        validators: [Validators.required],
        asyncValidators: [],
      }),
      surname: new FormControl('', {
        validators: [Validators.required],
        asyncValidators: [],
      }),
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
    this.UserRepo.execute(this.registerForm.value).subscribe({
      next: (v) => {
        this.submitted = false;
        this.notificationService.onSuccessNotify(
          'Registro',
          'El registro del usuario se ha hecho correctamente'
        );
        console.log(v);
        this.onReset();
      },
      error: (e) => {
        //console.log('loginComponent',e);
        this.submitted = false;
      },
      complete: () => console.log('ok'),
    });
  }

  /**
   * Con esta función vamos a reiniciar los valores
   * del formulario de login
   */
  private onReset(): void {
    this.submitted = false;
    this.registerForm.reset(this.registerForm.value);
    this.registerForm.reset();
  }
}

/**
 * name: string;
    surname: string;
    email: string;
    password: string;
 */
