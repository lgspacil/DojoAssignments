import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs';

@Injectable()
export class HttpService {

  constructor(private _http: Http) { }

  addNoteToDB(newNote){
    console.log("the service is adding this to the DataBase: ", newNote);
    return this._http.post("http://localhost:8000/notes", newNote).map((data) => data.json()).toPromise()
  }


  getQuotes(){
    console.log("sending in the get request to the Database");
    return this._http.get("http://localhost:8000/notes").map((data) => data.json()).toPromise()
  }

}
