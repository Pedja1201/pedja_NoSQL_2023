import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NaseljenoMestoService } from 'src/app/services/naseljeno-mesto.service';
import { Location } from '@angular/common';
@Component({
  selector: 'app-naseljeno-mesto-detalji',
  templateUrl: './naseljeno-mesto-detalji.component.html',
  styleUrls: ['./naseljeno-mesto-detalji.component.css']
})
export class NaseljenoMestoDetaljiComponent implements OnInit {
  naselje: any = {};
  constructor(private service: NaseljenoMestoService, private route: ActivatedRoute, private router: Router, private location: Location) { }

  ngOnInit(): void {
    let drzavaId = Number(this.route.snapshot.paramMap.get("id"));
    this.service.getOne(drzavaId).subscribe((value: any) => {
      this.naselje = value;
    }, (error) => {
      console.log(error);
      this.router.navigate(["naseljenaMesta"]);
    });
  }

  back() {
    this.location.back();
  }

}
