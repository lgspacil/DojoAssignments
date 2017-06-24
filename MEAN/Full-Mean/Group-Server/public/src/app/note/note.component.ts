import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import {HttpService} from './../http.service';

@Component({
  selector: 'app-note',
  templateUrl: './note.component.html',
  styleUrls: ['./note.component.css']
})
export class NoteComponent implements OnInit {
  @Output() runAfterPostForGet = new EventEmitter();

  array_of_notes = [];
  note = {content:''}

  constructor(private _http: HttpService) { }

  ngOnInit() {
  }

  addNote(){
    console.log("I am adding a note");
    this.array_of_notes.push(this.note);
    

    this._http.addNoteToDB(this.note)
      .then((result) => {
        console.log("success posting: ", result);
        //as soon as we get the respnse back from the service telling us that
        //the data was successfully posted to the DB we want to now run the get call()

        this.runAfterPostForGet.emit("successfully added to db running emit")

      })

      .catch((err) => {
        console.log("unable to post that info: ", err);

        this.runAfterPostForGet.emit("successfully added to db running emit");
      })

    
    this.note = {content:""};
    

      

  }

}
