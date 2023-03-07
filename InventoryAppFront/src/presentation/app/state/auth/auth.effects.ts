import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { Actions, createEffect, ofType } from '@ngrx/effects';
import { UserModel } from 'domain/models/users/user.model';
import { UserLoginUseCase } from 'domain/usecases/auth/user-login.usecase';
import { exhaustMap, catchError, map, of, tap } from 'rxjs';
import * as authActions from './auth.actions';

@Injectable()
export class AuthEffects {

    loginUserInfo$ = createEffect(()=>
       this.actions$.pipe(
        ofType(authActions.loginUserInfo),
        tap((user) => {
            //console.log(user)
            this.router.navigate(['/dashboard'])
        })
       ),
       { dispatch: false }
    )
  /*loginRequest$ = createEffect(() =>
    this.actions$.pipe(
      //El effect se asocia al action en esta linea
      ofType(authActions.loginRequest),
      exhaustMap((actions) => {
        
        
        return this.loginRepository
          .execute({
            email: actions.credentials.email,
            password: actions.credentials.password,
          })
          .pipe(
            map((loginSuccessResponse: UserModel) =>
              authActions.loginRequestSuccess({
                credentials: loginSuccessResponse,
              })
            ),
            catchError((error) => {
              return of(authActions.loginRequestError({ message: 'error' }));
            })
          );
      })
    )
  );

  loginSuccess$ = createEffect(
    () =>
      this.actions$.pipe(
        ofType(authActions.loginRequestSuccess),
        tap(( loginSuccessResponse ) => {
          this.router.navigateByUrl('/');
          alert(
            'Login Successful! ' +
              'Welcome, ' +
              loginSuccessResponse.credentials._username
          );
        })
      ),
    { dispatch: false }
  );*/


  constructor(
    private actions$: Actions,
    private loginRepository: UserLoginUseCase,
    private router: Router
  ) {}
}
