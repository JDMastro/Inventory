import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { DataModule } from "@src/data/data.module";
import { IndicatorsModule } from "@app/shared/indicators/indicators.module";
import { NotificationModule } from "@app/services/notification/notification.module";
import { ContainerComponent } from './pages/dashboard/container/container.component';
import { ComponentsModule } from './components/components.module';
import { HTTP_INTERCEPTORS } from '@angular/common/http';
import { HttpErrorInterceptorService } from './services/interceptors/http-error-interceptor.service';
//import { ErrorMessageComponent } from './components/error-message/error-message.component';



@NgModule({
  declarations: [
    AppComponent,
  
  //  ErrorMessageComponent,
    ContainerComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    DataModule,
    BrowserAnimationsModule,
    ComponentsModule,
    IndicatorsModule,
    NotificationModule.forRoot()
  ],
  providers:[
    {
      provide: HTTP_INTERCEPTORS,
      useClass: HttpErrorInterceptorService,
      multi: true
    }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
