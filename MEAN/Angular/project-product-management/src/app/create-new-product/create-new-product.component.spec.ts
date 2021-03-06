import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateNewProductComponent } from './create-new-product.component';

describe('CreateNewProductComponent', () => {
  let component: CreateNewProductComponent;
  let fixture: ComponentFixture<CreateNewProductComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CreateNewProductComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CreateNewProductComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
