import { Component, OnInit } from '@angular/core';
import { MatSnackBar } from '@angular/material';
import { Drzava } from 'src/app/model/drzava';
import { DrzavaService } from 'src/app/services/drzava.service';
import { LoginService } from 'src/app/services/login.service';

@Component({
  selector: 'app-drzava',
  templateUrl: './drzava.component.html',
  styleUrls: ['./drzava.component.css']
})
export class DrzavaComponent implements OnInit {
  title="Drzave"
  prikaz=false;

  drzave : Drzava[] = [];
  drzavaUpdate: Drzava | null = null;

  constructor(private service : DrzavaService) {
    service.getAll().subscribe(drzave => {
      this.drzave = drzave;
    })
  }

  ngOnInit(): void {
    this.getAll();
  }

  getAll() {
    this.service.getAll().subscribe((value) => {
      this.drzave = value;
    }, (error) => {
      console.log(error);
    });
  }

  delete(id: any) {
    this.service.delete(id).subscribe((value) => {
      this.getAll();
    }, (error) => {
      console.log(error);
    })
  }

  create(drzava: Drzava) {
    this.service.create(drzava).subscribe((value) => {
      this.getAll();
    }, (error) => {
      console.log(error);
    })
  }

  update(drzava: Drzava) {
    if(this.drzavaUpdate && this.drzavaUpdate.id) {
      this.service.update(this.drzavaUpdate.id, drzava).subscribe((value) => {
        this.getAll();
      }, (error) => {
        console.log(error);
      })
    }

  }

  setUpdate(drzava: any) {
    this.drzavaUpdate = { ...drzava };
  }
}
