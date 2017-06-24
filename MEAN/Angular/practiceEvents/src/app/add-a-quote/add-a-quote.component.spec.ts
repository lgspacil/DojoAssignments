import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddAQuoteComponent } from './add-a-quote.component';

describe('AddAQuoteComponent', () => {
  let component: AddAQuoteComponent;
  let fixture: ComponentFixture<AddAQuoteComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddAQuoteComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddAQuoteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
