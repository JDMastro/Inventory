import { createAction, props } from '@ngrx/store';
import { UserModel } from 'domain/models/users/user.model';
import * as authTypes from './auth.type';


export const loginUserInfo = createAction(
    authTypes.LOGIN_USER_INFO,
    props<{ userInfo: UserModel }>()
)

/*export const loginRequest = createAction(
  authTypes.LOGIN_REQUEST,
  props<{ credentials: { email: string; password: string } }>()
);

export const loginRequestSuccess = createAction(
  authTypes.LOGIN_REQUEST_SUCCESS,
  props<{ credentials: UserModel }>()
);

export const loginRequestError = createAction(
  authTypes.LOGIN_REQUEST_ERROR,
  props<{ message: string }>()
);

export const loginRequestLoading = createAction(
  authTypes.LOGIN_REQUEST_ERROR,
  props<{ isSubmitted: boolean }>()
);*/
