import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { IeeehomeComponent } from './ieeehome.component';

describe('IeeehomeComponent', () => {
  let component: IeeehomeComponent;
  let fixture: ComponentFixture<IeeehomeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ IeeehomeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(IeeehomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
