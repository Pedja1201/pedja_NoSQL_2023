import { Component, OnInit } from '@angular/core';
import { NaseljenoMesto } from 'src/app/model/naseljeno-mesto';
import { NaseljenoMestoService } from 'src/app/services/naseljeno-mesto.service';

@Component({
  selector: 'app-naseljeno-mesto',
  templateUrl: './naseljeno-mesto.component.html',
  styleUrls: ['./naseljeno-mesto.component.css']
})
export class NaseljenoMestoComponent implements OnInit {
  title="Naseljeno Mesto"
  prikaz=false;

  naselja : NaseljenoMesto[] = [];
  naseljeUpdate: NaseljenoMesto | null = null;

  constructor(private service : NaseljenoMestoService) {
    service.getAll().subscribe(naselje => {
      this.naselja = naselje;
    })
  }

  ngOnInit(): void {
    this.getAll();
  }

  getAll() {
    this.service.getAll().subscribe((value) => {
      this.naselja = value;
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

  create(drzava: NaseljenoMesto) {
    this.service.create(drzava).subscribe((value) => {
      this.getAll();
    }, (error) => {
      console.log(error);
    })
  }

  update(naselje: NaseljenoMesto) {
    if(this.naseljeUpdate && this.naseljeUpdate.id) {
      this.service.update(this.naseljeUpdate.id, naselje).subscribe((value) => {
        this.getAll();
      }, (error) => {
        console.log(error);
      })
    }

  }

  setUpdate(drzava: any) {
    this.naseljeUpdate = { ...drzava };
  }

}
