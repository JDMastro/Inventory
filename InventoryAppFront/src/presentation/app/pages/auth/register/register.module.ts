import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { RegisterRoutingModule } from './register-routing.module';
import { RegisterComponent } from './register.component';

import { InputTextModule } from 'primeng/inputtext';
import { PasswordModule } from 'primeng/password';
import { ButtonModule } from 'primeng/button';
import { ReactiveFormsModule } from '@angular/forms';
import { SpinnerModule } from '@app/shared/indicators/spinner/spinner.module';
import { ComponentsModule } from "../../../components/components.module";

@NgModule({
    declarations: [RegisterComponent],
    imports: [
        CommonModule,
        RegisterRoutingModule,
        InputTextModule,
        PasswordModule,
        ButtonModule,
        ReactiveFormsModule,
        SpinnerModule,
        ComponentsModule
    ]
})
export class RegisterModule {}
