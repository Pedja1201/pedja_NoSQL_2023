import { Injectable } from '@angular/core';
import { NaseljenoMesto } from '../model/naseljeno-mesto';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { LoginService } from './login.service';

@Injectable({
  providedIn: 'root'
})
export class NaseljenoMestoService {
  private baseUrl = environment.baseUrl //Dobavljanje url adrese da ne kucamo rucno

  constructor(private client : HttpClient, private loginService : LoginService) { }//Login


  getAll(){
    return this.client.get<NaseljenoMesto[]>(`${this.baseUrl}/naseljenaMesta`)
  }

  getOne(id : number){
    return this.client.get<NaseljenoMesto[]>(`${this.baseUrl}/naseljenaMesta/${id}`)
  }

  create(naselje : NaseljenoMesto){
    return this.client.post(`${this.baseUrl}/naseljenaMesta`, naselje)
  }

  update(id:number, naselje : NaseljenoMesto){
    return this.client.put<NaseljenoMesto[]>(`${this.baseUrl}/naseljenaMesta/${id}`, naselje)
  }

  delete(id:number){
    return this.client.delete<NaseljenoMesto[]>(`${this.baseUrl}/naseljenaMesta/${id}`)
  }
}
