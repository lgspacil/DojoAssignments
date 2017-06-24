import { Component, OnInit, OnDestroy } from '@angular/core';
//we first need to import this to grab the info that is in the url
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-home-page',
  templateUrl: './home-page.component.html',
  styleUrls: ['./home-page.component.css']
})
export class HomePageComponent implements OnInit {

  sub = null;

  constructor(private _route: ActivatedRoute) { }

  ngOnInit() {
  }

}
