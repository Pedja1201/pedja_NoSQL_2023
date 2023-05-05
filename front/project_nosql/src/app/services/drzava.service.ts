import { Injectable } from '@angular/core';
import { Drzava } from '../model/drzava';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { LoginService } from './login.service';

@Injectable({
  providedIn: 'root'
})
export class DrzavaService {
  private baseUrl = environment.baseUrl //Dobavljanje url adrese da ne kucamo rucno

  constructor(private client : HttpClient, private loginService : LoginService) { }//Login


  getAll(){
    return this.client.get<Drzava[]>(`${this.baseUrl}/drzave`)
  }

  getOne(id : number){
    return this.client.get<Drzava[]>(`${this.baseUrl}/drzave/${id}`)
  }

  create(drzava : Drzava){
    return this.client.post(`${this.baseUrl}/drzave`, drzava)
  }

  update(id:number, drzava : Drzava){
    return this.client.put<Drzava[]>(`${this.baseUrl}/drzave/${id}`, drzava)
  }

  delete(id:number){
    return this.client.delete<Drzava[]>(`${this.baseUrl}/drzave/${id}`)
  }
}
