import { Component, OnInit, OnDestroy } from '@angular/core';
//we first need to import this to grab the info that is in the url
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-temp',
  templateUrl: './temp.component.html',
  styleUrls: ['./temp.component.css']
})
export class TempComponent implements OnInit, OnDestroy {

  //set a variable temp to be null
  temp = null;
  sub = null;

  //create a private variable named _route set to ActivatedRoute
  // grab the _route and subscribe to the param in url  
  constructor(private _route: ActivatedRoute) {
   
   }

  ngOnInit() {
    this.sub = this._route.params.subscribe((params) => {
      this.temp = params.temp
    })
  }

  ngOnDestroy(){
    console.log("Unsubscribing ");
    this.sub.unsubscribe();
    
  }

}
