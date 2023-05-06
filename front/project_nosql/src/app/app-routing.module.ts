import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { WelcomeComponent } from './components/welcome/welcome.component';
import { LoginComponent } from './login/login.component';
import { DrzavaComponent } from './components/drzava/drzava.component';
import { NaseljenoMestoComponent } from './components/naseljeno-mesto/naseljeno-mesto.component';
import { AddUsersComponent } from './components/users/add-users/add-users.component';
import { AllUsersComponent } from './components/users/all-users/all-users.component';
import { EditFormUsersComponent } from './components/users/edit-form-users/edit-form-users.component';
import { DetailsDrzavaComponent } from './components/drzava/details-drzava/details-drzava.component';
import { NaseljenoMestoDetaljiComponent } from './components/naseljeno-mesto/naseljeno-mesto-detalji/naseljeno-mesto-detalji.component';


const routes: Routes = [
  {path: "", component: WelcomeComponent},
  {path:"", redirectTo: "", pathMatch:"full"}, ///Vraca na korensku rutu

  {path: "drzave", component: DrzavaComponent,},
  {path: "drzave/:id", component: DetailsDrzavaComponent},

  {path: "naseljenaMesta", component: NaseljenoMestoComponent,},
  {path: "naseljenaMesta/:id", component: NaseljenoMestoDetaljiComponent},

  {path: 'users', component: AllUsersComponent},
  {path : 'add-users', component : AddUsersComponent},
  {path: 'edit-users/:id', component: EditFormUsersComponent },


    //Login
    {path:"login", component:LoginComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
