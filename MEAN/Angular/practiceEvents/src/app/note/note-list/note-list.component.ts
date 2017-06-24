import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-note-list',
  templateUrl: './note-list.component.html',
  styleUrls: ['./note-list.component.css']
})
export class NoteListComponent implements OnInit {
  // @Input() myNotes;
  // @Output() myEvent = new EventEmitter(); 
  // @Output() aEventListener = new EventEmitter();
  // @Input() childVar;
  // @Output() multEvent = new EventEmitter();
  @Input() myName;
  @Output() clearName = new EventEmitter();

  constructor() { }

  deleteName(obj){
    console.log("received: " , obj);

    this.clearName.emit(obj);
  }





 

  ngOnInit() {
  }

}
