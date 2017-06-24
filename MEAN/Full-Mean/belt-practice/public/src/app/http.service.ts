import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import 'rxjs';

@Injectable()
export class HttpService {

  constructor(private _http: Http) { }


  addNewUser(user){
    // console.log("we are passing in this user name in the service", user);
    return this._http.post("/users", user).map(data => data.json()).toPromise()
  }


  getOneTopic(id){
    console.log(id);
    return this._http.get("/topic/" + id).map(data => data.json()).toPromise()
  }

  //making a get request when a link was clicked on a username
  //using params in the url to pass into the get request

  loadUser(id){
    console.log("the id we are passing in is: ", id);
    return this._http.get("/user/" + id).map(data => data.json()).toPromise()
  }


  postTopic(topic_obj){
    // console.log("we are passing in the post to the server.js file ", post)
    return this._http.post("/add_topic", topic_obj).map(data => data.json()).toPromise()
  }

  getTopics(){
    return this._http.get('/topics').map((data) => data.json()).toPromise()
  }

  postAPost(post_info){
    console.log("in the service.ts: ", post_info);

    return this._http.post("/add_post", post_info).map((data) => data.json()).toPromise()
  }
}
