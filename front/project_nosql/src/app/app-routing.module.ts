import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { WelcomeComponent } from './components/welcome/welcome.component';
import { LoginComponent } from './login/login.component';
import { DrzavaComponent } from './components/drzava/drzava.component';
import { NaseljenoMestoComponent } from './components/naseljeno-mesto/naseljeno-mesto/naseljeno-mesto.component';

const routes: Routes = [
  {path: "", component: WelcomeComponent},
  {path:"", redirectTo: "", pathMatch:"full"}, ///Vraca na korensku rutu

  {path: "drzave", component: DrzavaComponent,},
  // {path: "drzave/:id", component: DetailsAdreseComponent},

  {path: "naseljenaMesta", component: NaseljenoMestoComponent,},
  // {path: "naseljenaMesta/:id", component: DetailsAdreseComponent},


    //Login
    {path:"login", component:LoginComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
