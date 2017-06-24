import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import { BehaviorSubject } from 'rxjs/BehaviorSubject';
import 'rxjs';

@Injectable()
export class HttpService {

  constructor(private _http: Http) { }

  

  getUser1(username){
    return this._http.get("https://api.github.com/users/"+username).map(data => data.json()).toPromise()

  }



  getUser2(username){
    console.log("hey");
    return this._http.get("https://api.github.com/users/"+username).map(data => data.json()).toPromise()

  }


  addNewUser(user){
    return this._http.post("/users", user).map(data => data.json()).toPromise()
  }
}
