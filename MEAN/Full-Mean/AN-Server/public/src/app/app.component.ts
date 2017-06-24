import { Component } from '@angular/core';
import { HttpService } from './http.service';
import { Note } from './note';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  notes : Array<Note> = [];

  constructor(private _http: HttpService) { }


  ngOnInit() {
    this.getNotes("");
  }


  getNotes(note){
    console.log("making a service call")
    this._http.getNotes()
      .then((data) => {console.log("received the data")
      this.notes = data})

      .catch((err) => {console.log("error")})
  }


}
