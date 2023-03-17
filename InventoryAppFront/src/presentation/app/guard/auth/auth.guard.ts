import { Injectable } from '@angular/core';
import {
  ActivatedRouteSnapshot,
  CanActivate,
  Router,
  RouterStateSnapshot,
  UrlTree,
} from '@angular/router';
import { AuthcookieService } from '@app/services/cookie/authcookie.service';
import { map, Observable } from 'rxjs';
import { State } from '@app/state/auth/auth.reducer';
import { Store } from '@ngrx/store';
import * as authSelector from '@app/state/auth/auth.selector';

@Injectable({
  providedIn: 'root',
})
export class AuthGuard implements CanActivate {
  auth$ = this.store.select(authSelector.selectUserAuth);

  constructor(
    private cookie: AuthcookieService,
    private router: Router,
    private store: Store<State>
  ) {}

  redirect() {
    this.router.navigate(['/']);
  }

  canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ):
    | Observable<boolean | UrlTree>
    | Promise<boolean | UrlTree>
    | boolean
    | UrlTree {
    const checkCookie = this.cookie.getCookie();

    /*if (!checkCookie) {
      this.redirect();
    }*/

    this.auth$.subscribe(
        {
          next : (v) => {
            if(!v && !checkCookie){
              this.redirect()
            }

            if(!v && checkCookie){
               //BUSCAR INFO FROM COOKIE
            }
          },
          error : (e) =>  console.log(e),
          complete : () => {}

        }
      )

    return true;
  }
}
