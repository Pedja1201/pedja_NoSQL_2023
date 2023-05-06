import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { Router } from '@angular/router';
import { Drzava } from 'src/app/model/drzava';
import { DrzavaService } from 'src/app/services/drzava.service';
import { LoginService } from 'src/app/services/login.service';

@Component({
  selector: 'app-drzava-tabela',
  templateUrl: './drzava-tabela.component.html',
  styleUrls: ['./drzava-tabela.component.css']
})
export class DrzavaTabelaComponent implements OnInit {
  title="Tabela Drzave";

  @Input()
  elementi: any[] = [];

  @Output()
  uklanjanje : EventEmitter<any> = new EventEmitter<any>();

  @Output()
  izmena: EventEmitter<any> = new EventEmitter<any>();

  constructor(private router : Router,private service: DrzavaService,  public loginService : LoginService) {
   }

  ngOnInit(): void {
  }

  ukloni(id:number) {
    this.uklanjanje.emit(id);
  }

  izmeni(id:number) {
    this.izmena.emit(id);
  }

  prikaziDetalje(drzava: Drzava) {
    this.router.navigate(["/drzave", drzava.id]);
  }

}
