import { Injectable } from '@angular/core';
import {Http} from '@angular/http';
import 'rxjs';

@Injectable()
export class HttpService {

  //going to send a get request to the server

  constructor(private _http: Http) { }

  addNote(noteObj){
    //we are going to use the variable _http call the post method passing in the url and ibject we want to pass
    return this._http.post("http://localhost:8000/notes", noteObj).map((data)=> data.json()).toPromise()
  }

  getNotes(){
    return this._http.get("http://localhost:8000/notes").map((data) => data.json()).toPromise();
  }

}
