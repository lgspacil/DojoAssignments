import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-create-new-product',
  templateUrl: './create-new-product.component.html',
  styleUrls: ['./create-new-product.component.css']
})
export class CreateNewProductComponent implements OnInit {

  products = [];
  item = {title: '', price: null, image: ''};

  constructor() { }

  submitform(){
    this.products.push(this.item);
    this.item = {title: '', price: null, image: ''};

  }

  ngOnInit() {
  }

}
