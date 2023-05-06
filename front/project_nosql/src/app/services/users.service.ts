import { Injectable } from '@angular/core';
import { User } from '../model/user';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { LoginService } from './login.service';

@Injectable({
  providedIn: 'root'
})
export class UsersService {
    private baseUrl = environment.baseUrl //Dobavljanje url adrese da ne kucamo rucno
  
    constructor(private client : HttpClient, private loginService : LoginService) { }
  
  
    getAll(){
      return this.client.get<User[]>(`${this.baseUrl}/users`)
    }
  
    getOne(id : string){
      return this.client.get<User[]>(`${this.baseUrl}/users/${id}`)
    }
  
    create(user : User){
      return this.client.post(`${this.baseUrl}/users`, user)
    }
  
    update(user : User){
      return this.client.put<User[]>(`${this.baseUrl}/users/`, user)
    }
  
    delete(id:User){
      return this.client.delete<User[]>(`${this.baseUrl}/users/${id}`)
    }
}
