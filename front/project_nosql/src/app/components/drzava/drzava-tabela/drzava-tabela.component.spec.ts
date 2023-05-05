import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DrzavaTabelaComponent } from './drzava-tabela.component';

describe('DrzavaTabelaComponent', () => {
  let component: DrzavaTabelaComponent;
  let fixture: ComponentFixture<DrzavaTabelaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DrzavaTabelaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(DrzavaTabelaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
