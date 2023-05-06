import { Component, EventEmitter, Input, OnInit, Output, SimpleChanges, ViewChild } from '@angular/core';
import { FormGroupDirective, FormGroup, FormControl, Validators } from '@angular/forms';
import { Drzava } from 'src/app/model/drzava';

@Component({
  selector: 'app-forma-drzava',
  templateUrl: './forma-drzava.component.html',
  styleUrls: ['./forma-drzava.component.css']
})
export class FormaDrzavaComponent implements OnInit {
  title='Forma Drzava'

  @ViewChild(FormGroupDirective) formGroupDirective: FormGroupDirective | undefined;


  forma : FormGroup = new FormGroup({
    "oznaka": new FormControl(null, [Validators.required]),
    "naziv": new FormControl(null, [Validators.required]),

  })
  
  @Input()
  drzava: Drzava|null = null;

  @Output()
  public createEvent: EventEmitter<any> = new EventEmitter<any>();

  constructor() { }

  ngOnChanges(changes: SimpleChanges): void {
    console.log(changes);
    console.log(this.drzava);
    this.forma.get("id")?.setValue(this.drzava?.id);
    this.forma.get("oznaka")?.setValue(this.drzava?.naziv)  ;
    this.forma.get("naziv")?.setValue(this.drzava?.naziv)  
  }

  ngOnInit(): void {
    this.forma.get("id")?.setValue(this.drzava?.id);
    this.forma.get("oznaka")?.setValue(this.drzava?.id);
    this.forma.get("naziv")?.setValue(this.drzava?.id);
  }

  create() {
    if(this.forma.valid) {
      this.createEvent.emit(this.forma.value);

      setTimeout(() => 
      this.formGroupDirective?.resetForm(), 0)
    }
  }


}
