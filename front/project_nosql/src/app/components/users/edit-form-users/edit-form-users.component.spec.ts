import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EditFormUsersComponent } from './edit-form-users.component';

describe('EditFormUsersComponent', () => {
  let component: EditFormUsersComponent;
  let fixture: ComponentFixture<EditFormUsersComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EditFormUsersComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EditFormUsersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
