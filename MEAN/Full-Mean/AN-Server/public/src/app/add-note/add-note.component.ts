import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { Note } from "./../note";
//importing the infor from the service call 
import { HttpService } from "./../http.service";

@Component({
  selector: 'app-add-note',
  templateUrl: './add-note.component.html',
  styleUrls: ['./add-note.component.css']
})
export class AddNoteComponent implements OnInit {

  @Output() addNoteEmitter = new EventEmitter();

  noteobject = new Note();


  constructor(private _http: HttpService) { }

  //this calls a service
  //the _http is the variable inplace of the class inheriting all the methods such as .addNote in service
  //we are passing in the noteobject that was bounded in the form
  addNote(form){
    //go to the service.ts
    this._http.addNote(this.noteobject)
      .then((data) => { console.log("we got the data", data) 
        this.addNoteEmitter.emit("note was added")
      })

      .catch((data) => { console.log("We got an error", data)
         this.addNoteEmitter.emit("note was not added");
    })
    
    this.noteobject = new Note();
    form.reset();

  }

  ngOnInit() {
  }

  //we will need a method to call the Service that will pass it to the DataBase

}
