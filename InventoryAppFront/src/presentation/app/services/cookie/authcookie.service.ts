import { Injectable } from '@angular/core';
import { CookieService } from 'ngx-cookie-service';

@Injectable()
export class AuthcookieService {
  private cookieName: string = 'iv_at';
  constructor(private cookieService: CookieService) {}

  getCookie() {
    return JSON.parse(this.cookieService.get(this.cookieName))
  }

  addCookie(token: any) {
    this.cookieService.set(this.cookieName, JSON.stringify(token));
  }

  removeCookie() {
    this.cookieService.delete(this.cookieName);
  }
}
