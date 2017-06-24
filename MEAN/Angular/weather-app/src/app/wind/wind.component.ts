import { Component, OnInit, OnDestroy } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';



@Component({
  selector: 'app-wind',
  templateUrl: './wind.component.html',
  styleUrls: ['./wind.component.css']
})
export class WindComponent implements OnInit {

  speed = null;
  sub = null;

  constructor(private _route: ActivatedRoute) {
    
   }

  ngOnInit() {
    this.sub = this._route.params.subscribe((params) => {
      this.speed = params.speed;
    })
  }

  ngOnDestroy(){
    console.log("unsubscribing from wind");
    this.sub.unsubscribe();
    
  }

}
