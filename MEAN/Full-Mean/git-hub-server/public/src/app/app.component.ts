import { Component } from '@angular/core';
import { HttpService } from "app/http.service";


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  players_list = [];

  constructor(private _httpService: HttpService) {
  }

  // updateUsers(){
  //   this._httpService.updatedUsers(this.player1_obj);
  // }
  
  player1_obj = null;
  player2_obj = null;
  battle = null;
  


  pullDataToDisplay1(obj){
    console.log("player 1 it to the parent component: ", obj);

    this.player1_obj = obj;
  }


  pullDataToDisplay2(obj){
    console.log("player 2 it to the parent component: ", obj);

    this.player2_obj = obj;
  }

  battleBegun(trueOrFalse){
    this.battle = trueOrFalse;
  }





}
