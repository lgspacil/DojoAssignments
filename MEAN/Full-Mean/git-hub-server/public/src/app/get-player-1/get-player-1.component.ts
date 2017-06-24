import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { Router } from '@angular/router';
import { HttpService } from "app/http.service";


@Component({
  selector: 'app-get-player-1',
  templateUrl: './get-player-1.component.html',
  styleUrls: ['./get-player-1.component.css']
})
export class GetPlayer1Component implements OnInit {
  
  @Output() runAfterGetUser1 = new EventEmitter();
  @Output() runAfterGetUser2 = new EventEmitter();
  @Output() buttonClicked = new EventEmitter();

  user_name = {user1: '', user2: ''};
  temp1 = null;
  temp2 = null;
  
  picture1 = '';
  picture2 = '';

  user1 = {username: '', score: 0, img_url: ''};
  user2 = {username: '', score: 0, img_url: ''};

  constructor(private _httpService: HttpService, private _router: Router) { 
  }


  getUser1(){
    this._httpService.getUser1(this.user_name.user1)

      .then(data => {
        console.log("we got a successful username with the get request", data);

        
        //this is adding the info to a variable to be passed to the DB
        // when the user is recived from the API add it to DB with post
        this.user1.username = data.login;
        this.user1.score = (data.followers + data.public_repos)*12;
        this.user1.img_url = data.avatar_url;
        this._httpService.addNewUser(this.user1); //handle promise with .then and .catch
        // in the .then, pass this.user1 into communicate service's update function

        this.temp1 = data.avatar_url;

        this.runAfterGetUser1.emit(data)
      })

      .catch((err) => {
        console.log("did not get a username with a get request");
        
      })

  }



  getUser2(){
    this._httpService.getUser2(this.user_name.user2)

      .then(data => {
        console.log("we got a successful username with the get request", data)

        //this is adding the info to a variable to be passed to the DB
        this.user2.username = data.login;
        this.user2.score = (data.followers + data.public_repos)*12;
        this.user2.img_url = data.avatar_url;
        this._httpService.addNewUser(this.user2);


        this.temp2 = data.avatar_url;



        this.runAfterGetUser2.emit(data)
      })

      .catch((err) => {
        console.log("did not get a username with a get request");
        
      })

  }

  battle(){
     this.buttonClicked.emit(true)
    // this._router.navigate(['/result']);
  }


  ngOnInit() {
  }

}
