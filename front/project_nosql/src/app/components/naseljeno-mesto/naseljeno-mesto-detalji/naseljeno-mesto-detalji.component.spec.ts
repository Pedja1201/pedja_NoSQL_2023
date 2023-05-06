import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NaseljenoMestoDetaljiComponent } from './naseljeno-mesto-detalji.component';

describe('NaseljenoMestoDetaljiComponent', () => {
  let component: NaseljenoMestoDetaljiComponent;
  let fixture: ComponentFixture<NaseljenoMestoDetaljiComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NaseljenoMestoDetaljiComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NaseljenoMestoDetaljiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
