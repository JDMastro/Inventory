import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LoginRoutingModule } from './login-routing.module';
import { LoginComponent } from './login.component';
import { InputTextModule } from "primeng/inputtext";
import {PasswordModule} from 'primeng/password';
import { ButtonModule } from "primeng/button";
import { ReactiveFormsModule } from '@angular/forms';
//import { ErrorMessageComponent } from "@app/components/error-message/error-message.component";
import { SpinnerModule } from "@app/shared/indicators/spinner/spinner.module";
import { ComponentsModule } from "../../../components/components.module";
import { AuthcookieService } from '@app/services/cookie/authcookie.service';


@NgModule({
    declarations: [
        LoginComponent,
        // ErrorMessageComponent
    ],
    imports: [
        CommonModule,
        LoginRoutingModule,
        InputTextModule,
        PasswordModule,
        ButtonModule,
        ReactiveFormsModule,
        SpinnerModule,
        ComponentsModule
    ],
    providers:[AuthcookieService]
})
export class LoginModule { }
