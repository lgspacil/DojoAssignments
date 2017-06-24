import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-task-edit',
  templateUrl: './task-edit.component.html',
  styleUrls: ['./task-edit.component.css']
})
export class TaskEditComponent implements OnInit {

  @Input() taskToShow;
  @Output() tellParentToUpdate = new EventEmitter;

  constructor() { }

  changeTask(){
    console.log("we are going to udate:", this.taskToShow);

    this.tellParentToUpdate.emit(this.taskToShow);
  }

  ngOnInit() {
  }

}
