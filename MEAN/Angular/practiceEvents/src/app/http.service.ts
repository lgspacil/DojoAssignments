//This is the document that willl be generated first
import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs'
//Import all of these...

@Injectable()
export class HttpService {

  constructor(private _http: Http) { }
  retrieveTasks(username) {
    let url = 'https://api.github.com/users/' + username;

    return this._http.get(url).map(data=>data.json()).toPromise()
  }
}

