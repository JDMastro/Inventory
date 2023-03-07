import { createFeatureSelector, createSelector } from '@ngrx/store';
import { State } from './auth.reducer';

const selectAuthState = createFeatureSelector<State>('auth');

export const selectUserInfo = createSelector(
  selectAuthState,
  (state) => state.user
);
export const selectUserAuth = createSelector(
  selectAuthState,
  (state) => state.auth
);
