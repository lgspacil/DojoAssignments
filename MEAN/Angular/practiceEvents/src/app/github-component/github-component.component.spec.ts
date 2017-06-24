import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GithubComponentComponent } from './github-component.component';

describe('GithubComponentComponent', () => {
  let component: GithubComponentComponent;
  let fixture: ComponentFixture<GithubComponentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GithubComponentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GithubComponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
