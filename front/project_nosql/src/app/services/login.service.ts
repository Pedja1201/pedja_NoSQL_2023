import { Injectable } from '@angular/core';
import { Admin } from '../model/admin';
import { User } from '../model/user';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import {  Observable, map } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Token } from '../model/token';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private baseUrl = environment.baseUrl
  token : Token = new Token()
  user : User = new User()

  isLoggedIn(){
    if (localStorage.getItem('Token')) {
      return true;
    } else {
      return false;
    }
  }

  constructor(private client : HttpClient, private router : Router) { }

  login(user:User){
    const headers=new HttpHeaders({'Access-Control-Allow-Origin':'*'});
    return this.client.post<User>(`${this.baseUrl}/login`, user,{headers:headers}).pipe(
      map(user => {
        localStorage.setItem('Token', JSON.stringify(user));
      })
    );
  }

  signupUser(user:User) : Observable<string>{ 
    return this.client.post<string>(`${this.baseUrl}/signup`, user)
  }

  logout() {
    localStorage.removeItem("Token");
    this.router.navigate(['/login'])
  }
}
