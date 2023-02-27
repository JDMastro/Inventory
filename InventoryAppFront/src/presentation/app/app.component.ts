import { Component } from '@angular/core';
import { UserModel } from 'domain/models/user.model';
import { UserLoginUseCase } from 'domain/usecases/auth/user-login.usecase';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {
  /*title = 'InventoryAppFront';
  error: string = '';
  user!: UserModel

  constructor(private UserRepo: UserLoginUseCase) {}

  test() {
    this.UserRepo.execute({
      email: 'admin@localhost.com',
      password: 'Jaime9506$',
    }).subscribe({
      next: (v) => this.user = v,
      error: (e) => this.error = e.error.Message,
      complete: () => console.info('complete') 
    });
  }*/
}
