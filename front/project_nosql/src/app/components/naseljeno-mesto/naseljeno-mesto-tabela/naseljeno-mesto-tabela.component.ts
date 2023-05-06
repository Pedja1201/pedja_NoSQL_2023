import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Router } from '@angular/router';
import { NaseljenoMesto } from 'src/app/model/naseljeno-mesto';
import { LoginService } from 'src/app/services/login.service';
import { NaseljenoMestoService } from 'src/app/services/naseljeno-mesto.service';

@Component({
  selector: 'app-naseljeno-mesto-tabela',
  templateUrl: './naseljeno-mesto-tabela.component.html',
  styleUrls: ['./naseljeno-mesto-tabela.component.css']
})
export class NaseljenoMestoTabelaComponent implements OnInit {
  title="Tabela Naseljenih mesta";

  @Input()
  elementi: any[] = [];

  @Output()
  uklanjanje : EventEmitter<any> = new EventEmitter<any>();

  @Output()
  izmena: EventEmitter<any> = new EventEmitter<any>();

  constructor(private router : Router,private service: NaseljenoMestoService,  public loginService : LoginService) {
   }

  ngOnInit(): void {
  }

  ukloni(id:number) {
    this.uklanjanje.emit(id);
  }

  izmeni(id:number) {
    this.izmena.emit(id);
  }

  prikaziDetalje(naselje: NaseljenoMesto) {
    this.router.navigate(["/naseljenaMesta", naselje.id]);
  }

}
