import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-video-review',
  templateUrl: './video-review.component.html',
  styleUrls: ['./video-review.component.css']
})
export class VideoReviewComponent implements OnInit {
    tasks = ["Walk the dog", "Make dinner", "Sweep", "Catch mice"];

  constructor() { }

  ngOnInit() {
  }

  removeTask(data){
    console.log("The data sent to the parent is: ", data);

    let x = this.tasks.indexOf(data);

    this.tasks.splice(x, 1);
  }


  updateTask(data){
    console.log("grandparents received old data", data.oldTask, data.updatedTask);

    let indexOfOld = this.tasks.indexOf(data.oldTask);

    this.tasks[indexOfOld] = data.updatedTask;
  }

}
