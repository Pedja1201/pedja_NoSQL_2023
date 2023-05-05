import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NaseljenoMestoTabelaComponent } from './naseljeno-mesto-tabela.component';

describe('NaseljenoMestoTabelaComponent', () => {
  let component: NaseljenoMestoTabelaComponent;
  let fixture: ComponentFixture<NaseljenoMestoTabelaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NaseljenoMestoTabelaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NaseljenoMestoTabelaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
