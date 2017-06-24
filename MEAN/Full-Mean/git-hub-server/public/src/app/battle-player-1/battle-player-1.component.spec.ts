import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BattlePlayer1Component } from './battle-player-1.component';

describe('BattlePlayer1Component', () => {
  let component: BattlePlayer1Component;
  let fixture: ComponentFixture<BattlePlayer1Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BattlePlayer1Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BattlePlayer1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
