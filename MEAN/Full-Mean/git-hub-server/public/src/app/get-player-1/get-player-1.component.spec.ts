import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GetPlayer1Component } from './get-player-1.component';

describe('GetPlayer1Component', () => {
  let component: GetPlayer1Component;
  let fixture: ComponentFixture<GetPlayer1Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GetPlayer1Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GetPlayer1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
