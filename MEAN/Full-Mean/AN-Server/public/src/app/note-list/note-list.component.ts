import { Component, OnInit, Input } from '@angular/core';
import { HttpService } from './../http.service';

@Component({
  selector: 'app-note-list',
  templateUrl: './note-list.component.html',
  styleUrls: ['./note-list.component.css']
})
export class NoteListComponent implements OnInit {
  //by making an @input here and passing in notes, the HTML file can now go through this info
  //we are inputing "notes" from the parent
  @Input() notes;

  
  
  constructor(private _http: HttpService) { }

  ngOnInit() {
    
  }

}
