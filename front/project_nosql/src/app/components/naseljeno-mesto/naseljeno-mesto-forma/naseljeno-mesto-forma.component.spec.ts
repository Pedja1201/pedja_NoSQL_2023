import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NaseljenoMestoFormaComponent } from './naseljeno-mesto-forma.component';

describe('NaseljenoMestoFormaComponent', () => {
  let component: NaseljenoMestoFormaComponent;
  let fixture: ComponentFixture<NaseljenoMestoFormaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NaseljenoMestoFormaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NaseljenoMestoFormaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
