import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FormaDrzavaComponent } from './forma-drzava.component';

describe('FormaDrzavaComponent', () => {
  let component: FormaDrzavaComponent;
  let fixture: ComponentFixture<FormaDrzavaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FormaDrzavaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(FormaDrzavaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
