import { Injectable } from '@angular/core';
import { environment } from 'environments/environment';
import { CookieService } from 'ngx-cookie-service';

@Injectable()
export class AuthcookieService {
  private cookieName: string = 'iv_at';
  constructor(private cookieService: CookieService) {}

  getCookie() {
    return this.cookieService.get(this.cookieName)
      ? JSON.parse(this.cookieService.get(this.cookieName))
      : null;
    //return JSON.parse(this.cookieService.get(this.cookieName))
  }

  addCookie(token: any) {
    this.cookieService.set(this.cookieName, JSON.stringify(token), 1, '/');
  }

  removeCookie() {
    this.cookieService.delete(
      this.cookieName,
      '/',
      environment.domainApp,
      true,
      'Strict'
    );
  }
}
