import { Action, createReducer, on } from '@ngrx/store';
import { UserModel } from 'domain/models/users/user.model';
import * as authActions from './auth.actions';

export interface State {
  user: UserModel | null;
  auth: boolean;
}

export const initialState: State = {
  user: null,
  auth: false,
};

const _authReducer = createReducer(
  initialState,
  on(authActions.loginUserInfo, (state, user)=>{
    return {
        ...state,
        user : user.userInfo,
        auth: true
    }
  })
  /*on(authActions.loginRequestSuccess, (state, loginSuccessResponse) => {
    return {
      ...state,
      user: loginSuccessResponse.credentials,
      auth: true,
    };
  }),

  on(authActions.loginRequestError, (state, loginMessage) => {
    return {
      ...state,
      auth: false,
      message: loginMessage.message,
    };
  }),

  on(authActions.loginRequestLoading, (state, isSubmitted) => {
    return {
      ...state,
      isSubmitted: isSubmitted.isSubmitted,
    };
  })*/
);

export function authReducer(state: any, action: Action) {
  return _authReducer(state, action);
}
