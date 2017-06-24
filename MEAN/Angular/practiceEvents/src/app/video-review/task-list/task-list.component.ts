import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-task-list',
  templateUrl: './task-list.component.html',
  styleUrls: ['./task-list.component.css']
})
export class TaskListComponent implements OnInit {
  @Input() childTasks;
  @Output() remove = new EventEmitter;
  @Output() tellParentToUpate = new EventEmitter;

  taskToEdit = null;

  constructor() { }

  ngOnInit() {
  }

  showForm(task){
    console.log("you clicked me to edit", task);

    this.taskToEdit = task;
  }

  removeTask(task){
    console.log("I want to remove", task);

    this.remove.emit(task);
  }

  updateTask(task){
    console.log("the task will change with this updated task", task, this.taskToEdit);

    this.tellParentToUpate.emit({oldTask: this.taskToEdit, updatedTask: task});

    this.taskToEdit = null;
  }

}
