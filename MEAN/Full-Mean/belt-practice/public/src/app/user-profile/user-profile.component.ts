import { Component, OnInit } from '@angular/core';
import { CookieService } from "angular2-cookie/services/cookies.service";
import { HttpService } from "app/http.service";
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {

  constructor(private _cookieService:CookieService, private _httpService:HttpService, private _route: ActivatedRoute) { }
  name = this._cookieService.get('thisIsASecret');
  userid = this._cookieService.get('userid');

  sub = null;
  param_user_id = null;

  selected_user  = null;

  ngOnInit() {
    //need to subscribe to the user_id passed into the url
    //saving the parameter here on init and subscribing to it
    this.sub = this._route.params.subscribe((params) =>{
      this.param_user_id = params.id
    })

    this.loadUser();

  }

  loadUser(){
    this._httpService.loadUser(this.param_user_id)
      .then((data) =>{
        console.log("the data we got back in the loadUser is: ", data);
        this.selected_user = data;
      })
      .catch((err) =>{
        console.log("we got an error!")
      })
  }









  ngOnDestroy(){
    console.log("unsubscribing from selected_user");
    this.sub.unsubscribe();
  }

}