import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SatanComponent } from './satan.component';

describe('SatanComponent', () => {
  let component: SatanComponent;
  let fixture: ComponentFixture<SatanComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SatanComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SatanComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
