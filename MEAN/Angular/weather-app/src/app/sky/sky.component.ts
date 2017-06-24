import { Component, OnInit, OnDestroy } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-sky',
  templateUrl: './sky.component.html',
  styleUrls: ['./sky.component.css']
})
export class SkyComponent implements OnInit {

  clouds = null;
  sub = null;
  
  constructor(private _route: ActivatedRoute) {
    
   }

  ngOnInit() {
    this.sub = this._route.params.subscribe((params) => {
      this.clouds = params.clouds
    })
  }

  ngOnDestroy(){
    console.log("unsubscribing from sky");
    this.sub.unsubscribe();
  }

}
