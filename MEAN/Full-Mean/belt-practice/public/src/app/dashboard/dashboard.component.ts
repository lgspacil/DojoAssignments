import { Component, OnInit } from '@angular/core';
import { CookieService } from "angular2-cookie/services/cookies.service";
import { HttpService } from "app/http.service";

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {
  //setting variables to the cookies
  name = this._cookieService.get('thisIsASecret');
  userid = this._cookieService.get('userid');

  //creating a object that will be passed on
   topic_obj = {
    title: '',
    text: '',
    category: '',
    username: '',
    _user: ''
  }

  list_of_topics = [];
  
  constructor(private _cookieService:CookieService, private _httpService:HttpService) { }

  ngOnInit() {
    this.getTopics();
  }

  getTopics(){
    this._httpService.getTopics()
          .then((data) =>{
            this.list_of_topics = data;
          })
          .catch((err) =>{
            console.log("there was an error getting the topics");
            
          })
  }


  postTopic(){

    this.topic_obj._user = this.userid;
    this.topic_obj.username = this.name;

    this._httpService.postTopic(this.topic_obj)
      .then((data) =>{
        console.log("successfully posted topics to the database")

        this.getTopics();
      })

      .catch((err) => {
        console.log("did not post to the database from the dashboard.component.ts");
        
      })
  }

}
