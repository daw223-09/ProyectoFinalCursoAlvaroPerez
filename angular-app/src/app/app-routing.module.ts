import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PublicComponent } from './public/public.component';

import { SecureComponent } from './secure/secure.component';
import { HomeComponent } from './public/home/home.component';
import { LoginComponent } from './public/login/login.component';
import { RegisterComponent } from './public/register/register.component';
import { ClasesComponent } from './public/clases/clases.component';
import { MaterialComponent } from './public/material/material.component';


const routes: Routes = [
  {
    /* path: "public", component: PublicComponent,
    children: [
      { path: "", component: HomeComponent },
      { path: "login", component: LoginComponent },
      { path: "register", component: RegisterComponent },
      { path: "clases", component: ClasesComponent },
      { path: "material", component: MaterialComponent },
    ] */
    path: "", component: PublicComponent,
    children: [
      { path: "", component: HomeComponent },
      { path: "login", component: LoginComponent },
      { path: "register", component: RegisterComponent },
      { path: "clases", component: ClasesComponent },
      { path: "material", component: MaterialComponent },
    ]
  },
  { path: "secure", component: SecureComponent }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
