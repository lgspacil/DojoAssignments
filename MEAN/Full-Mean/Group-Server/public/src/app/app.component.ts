import { Component } from '@angular/core';
import { HttpService } from './http.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

    list_of_notes = [];

constructor(private _http: HttpService) { }

  //run this function so that right when the page loads up we can see all the posts
  ngOnInit(){
    this.makeAGetRequest()
  }



  makeAGetRequest(){
    this._http.getQuotes()
      .then((data)=> {
        console.log("made a successfull get request")


        //the json data we found when we made the query in the server 
        //we do not need to push it onto the list_of_notes since we are
        //getting back from the DB a large list of objects
        this.list_of_notes = data;
      })

      .catch((err) => {
        console.log("unable to make the get request")
      })

  }
}
