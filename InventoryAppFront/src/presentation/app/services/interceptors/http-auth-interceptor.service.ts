import { HttpEvent, HttpHandler, HttpInterceptor, HttpRequest } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { AuthcookieService } from '../cookie/authcookie.service';

@Injectable({
  providedIn: 'root'
})
export class HttpAuthInterceptorService implements HttpInterceptor {

  constructor( private cookie: AuthcookieService,) { }
  
  intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {

    let request = req
    const cookie = this.cookie.getCookie()
    if(cookie){
      request = req.clone({
        setHeaders: {
          authorization : `${cookie.tokenType} ${cookie.accessToken}`
        }
      })
    }

    return next.handle(request);
  }
}
