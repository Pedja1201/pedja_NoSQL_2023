import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {MatInputModule} from '@angular/material/input';
import {MatButtonModule} from '@angular/material/button';
import {MatListModule} from '@angular/material/list';
import {MatFormFieldModule} from '@angular/material/form-field';
import {MatCheckboxModule} from '@angular/material/checkbox';
import {MatSelectModule} from '@angular/material/select';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {MatCardModule} from '@angular/material/card';
import {MatIconModule} from '@angular/material/icon';
import {MatMenuModule} from '@angular/material/menu';
import { MatToolbarModule } from '@angular/material/toolbar';
import {MatTabsModule} from '@angular/material/tabs';
import { MatChipsModule } from '@angular/material/chips';   
import {MatSnackBarModule} from '@angular/material/snack-bar';
import {MatStepperModule} from '@angular/material/stepper';
import { MatSidenavModule } from '@angular/material/sidenav';
import {MatDatepickerModule} from '@angular/material/datepicker';
import {MatNativeDateModule} from '@angular/material/core'
import { MatTableModule } from '@angular/material/table'; 
import { FormsModule, ReactiveFormsModule }   from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { DrzavaComponent } from './components/drzava/drzava.component';
import { DrzavaTabelaComponent } from './components/drzava/drzava-tabela/drzava-tabela.component';
import { NaseljenoMestoComponent } from './components/naseljeno-mesto/naseljeno-mesto.component';
import { NaseljenoMestoTabelaComponent } from './components/naseljeno-mesto/naseljeno-mesto-tabela/naseljeno-mesto-tabela.component';
import { MeniComponent } from './meni/meni/meni.component';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { WelcomeComponent } from './components/welcome/welcome.component';
import { LoginComponent } from './login/login.component';
import { AuthInterceptor } from './interceptors/auth.interceptor';
import { AllUsersComponent } from './components/users/all-users/all-users.component';
import { AddUsersComponent } from './components/users/add-users/add-users.component';
import { EditFormUsersComponent } from './components/users/edit-form-users/edit-form-users.component';
import { FormaDrzavaComponent } from './components/drzava/forma-drzava/forma-drzava.component';
import { DetailsDrzavaComponent } from './components/drzava/details-drzava/details-drzava.component';
import { NaseljenoMestoFormaComponent } from './components/naseljeno-mesto/naseljeno-mesto-forma/naseljeno-mesto-forma.component';
import { NaseljenoMestoDetaljiComponent } from './components/naseljeno-mesto/naseljeno-mesto-detalji/naseljeno-mesto-detalji.component';

@NgModule({
  declarations: [
    AppComponent,
    DrzavaComponent,
    DrzavaTabelaComponent,
    NaseljenoMestoComponent,
    NaseljenoMestoTabelaComponent,
    MeniComponent,
    WelcomeComponent,
    LoginComponent,
    AllUsersComponent,
    AddUsersComponent,
    EditFormUsersComponent,
    FormaDrzavaComponent,
    DetailsDrzavaComponent,
    NaseljenoMestoFormaComponent,
    NaseljenoMestoDetaljiComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MatListModule,
    MatCheckboxModule,
    MatSelectModule,
    MatToolbarModule,
    MatIconModule,
    MatMenuModule,
    FormsModule,
    ReactiveFormsModule,
    MatSnackBarModule,
    NgbModule,
    MatTabsModule,
    MatTableModule,
    MatButtonModule,
    MatInputModule,
    MatFormFieldModule,
    

  ],
  providers: [{provide: HTTP_INTERCEPTORS, useClass:AuthInterceptor, multi:true}],
  bootstrap: [AppComponent]
})
export class AppModule { }
