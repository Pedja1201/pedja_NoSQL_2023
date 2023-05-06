import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NaseljenoMestoComponent } from './naseljeno-mesto.component';

describe('NaseljenoMestoComponent', () => {
  let component: NaseljenoMestoComponent;
  let fixture: ComponentFixture<NaseljenoMestoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NaseljenoMestoComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NaseljenoMestoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
