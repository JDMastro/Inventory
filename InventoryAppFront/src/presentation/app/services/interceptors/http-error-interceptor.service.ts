import {
  HttpErrorResponse,
  HttpEvent,
  HttpHandler,
  HttpInterceptor,
  HttpRequest,
} from '@angular/common/http';
import { Injectable } from '@angular/core';
import { catchError, Observable, throwError } from 'rxjs';
import { NotificationService } from '../notification/notification.service';

import { Router } from '@angular/router';

/**
 * Con esta clase vamos a poder interceptar todas las peticiones
 * http que se hagan en la aplicación, con el fin de manejar lo errores
 * de una forma centralizada
 * @version 1.0.0 2023-02-27
 * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
 * @since 1.0.0
 */
@Injectable({ providedIn: 'root' })
export class HttpErrorInterceptorService implements HttpInterceptor {
  constructor(
    private notification: NotificationService,
    private router: Router
  ) {}

  intercept(
    req: HttpRequest<any>,
    next: HttpHandler
  ): Observable<HttpEvent<any>> {
    return next.handle(req).pipe(
      catchError((error: HttpErrorResponse) => {
        return throwError(() => {
          const errorMessage = this.setError(error);
          this.notification.onErrorNotify('ERROR', errorMessage);
          return error.error;
        });
      })
    );
  }

  private setError(error: HttpErrorResponse): string {
    let errorMessage = "No se pudo establecer la conexión con el servidor :'(";
    if (error.error instanceof ErrorEvent) {
      //client error
      errorMessage = error.error.message;
    } else {
      if (error.status !== 0) {
        errorMessage = error.error.Message;
      } else {
        this.router.navigate(['/noconnection']);
      }
    }
    return errorMessage;
  }
}
