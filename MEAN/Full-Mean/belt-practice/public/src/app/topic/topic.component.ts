import { Component, OnInit } from '@angular/core';
import { HttpService } from "app/http.service";
import { CookieService } from "angular2-cookie/services/cookies.service";
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-topic',
  templateUrl: './topic.component.html',
  styleUrls: ['./topic.component.css']
})
export class TopicComponent implements OnInit {
  name = this._cookieService.get('thisIsASecret');
  userid = this._cookieService.get('userid');

  //set a variable temp to be null
  topic_id = null;
  sub = null;
  selected_topic = null;

   //creating a object that will be passed on
   post_obj = {
     username: '',
     content: '',
     _user: null,
     _topic: null,
  }




  constructor(private _cookieService:CookieService, private _httpService:HttpService, private _route: ActivatedRoute) { }

  ngOnInit() {
    //saving the parameter here on init and subscribing to it
    this.sub = this._route.params.subscribe((params) =>{
      this.topic_id = params.id
    })

    this.loadOneTopic();
  }

   loadOneTopic(){ 
    this._httpService.getOneTopic(this.topic_id)
      .then((data) =>{
        console.log("the data we got back in the getOneTopic is: ", data);
        this.selected_topic = data;
      })
      .catch((err) =>{
        console.log("we got an error!")
      })
    }

    // loadAllPosts(){
    //   this._httpService.getAllPosts()
    //     .then((data) => {

    //     })
    // }

  makeAPost(){
    //adding the cookies userid and the topic id that was grabbed from the param
    this.post_obj._topic = this.topic_id;
    this.post_obj._user = this.userid;
    this.post_obj.username = this.name;

    console.log("the obj is: ", this.post_obj);

    this._httpService.postAPost(this.post_obj)
      
      .then((data) => {
        console.log("we made a good post to the POST in the topic.components.ts")
        this.loadOneTopic();
      })

      .catch((err) => {
        console.log("error in the topic.component.ts")
      })
  } 






  ngOnDestroy(){
    console.log("unsubscribing from topics");
    this.sub.unsubscribe();
  }



}
