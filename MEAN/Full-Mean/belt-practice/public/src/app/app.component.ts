import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { Router } from '@angular/router';
import { HttpService } from "app/http.service";
import { CookieService } from "angular2-cookie/services/cookies.service";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
  constructor(private _httpService: HttpService, private _router: Router, private _cookieService:CookieService) { 
  }

  clicked = null;
  username = {name: ''};

  


  submitForm(){
    //making a cookie --- passing in the name
    this._cookieService.put('thisIsASecret', this.username.name);
    this.clicked = true;
    
    this._httpService.addNewUser(this.username)
      .then((id) => {
        console.log("we posted to the DB in the component.ts, here is the user_id: ", id); 

        //get the person who just logged in or the new users ID:
        this._cookieService.put('userid', id);
        
        this._router.navigate(['/dashboard']);
      })

      .catch((err) => {
        console.log("unable to post to the DB");
      })

  }
  
  enableLogin(){
    this.clicked = null;
    this.username = {name: ''};
  }

}
