import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-quote-list',
  templateUrl: './quote-list.component.html',
  styleUrls: ['./quote-list.component.css']
})
export class QuoteListComponent implements OnInit {
  @Input() myQuote;
  @Output() tellParentDeleteQuote = new EventEmitter;
  @Output() voteUpQuote = new EventEmitter;
  @Output() voteDownQuote = new EventEmitter;

  constructor() { }

  delete(obj){
    console.log("I want to delete!", obj);

    this.tellParentDeleteQuote.emit(obj);
  }

  voteUp(obj){
    console.log("I am voting up!", obj);

    this.voteUpQuote.emit(obj);
  }

  voteDown(obj){
    console.log("I am voting down", obj);

    this.voteDownQuote.emit(obj);
  }


  ngOnInit() {
  }

}
