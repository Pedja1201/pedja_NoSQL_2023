import { Component, EventEmitter, Input, OnInit, Output, SimpleChanges } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Drzava } from 'src/app/model/drzava';
import { NaseljenoMesto } from 'src/app/model/naseljeno-mesto';
import { DrzavaService } from 'src/app/services/drzava.service';

@Component({
  selector: 'app-naseljeno-mesto-forma',
  templateUrl: './naseljeno-mesto-forma.component.html',
  styleUrls: ['./naseljeno-mesto-forma.component.css']
})
export class NaseljenoMestoFormaComponent implements OnInit {
  title='Forma Naseljenog mesta'

  drzave: Drzava[] = [];
  
  forma : FormGroup = new FormGroup({
    "naziv": new FormControl(null, [Validators.required]),
    "drzava": new FormControl(null, [Validators.required]),
  })
  
  @Output()
  public createEvent: EventEmitter<any> = new EventEmitter<any>();
  
  @Input()
  naselje: NaseljenoMesto|null = null;

  constructor(private drzavaService : DrzavaService) { }

  ngOnChanges(changes: SimpleChanges): void {
    console.log(changes);
    console.log(this.naselje);
    this.forma.get("id")?.setValue(this.naselje?.id);
    this.forma.get("naziv")?.setValue(this.naselje?.naziv);
    this.forma.get("drzava")?.setValue(this.naselje?.drzava)

  }

  ngOnInit(): void {
    this.drzavaService.getAll().subscribe(drzave =>{
      this.drzave = drzave;
    });
    this.forma.get("id")?.setValue(this.naselje?.id);
    this.forma.get("naziv")?.setValue(this.naselje?.id);
    this.forma.get("drzava")?.setValue(this.naselje?.id);

  }

  create() {
    if(this.forma.valid) {
      this.createEvent.emit(this.forma.value);
    }
  }


  //Metoda koja proverava 
  comparator(drzava1: any, drzava2:any) {
    return drzava1 && drzava2
    ? drzava1.id === drzava2.id
    : drzava1 === drzava2;
  }

}
