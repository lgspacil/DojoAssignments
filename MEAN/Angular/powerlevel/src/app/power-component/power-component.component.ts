import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-power-component',
  templateUrl: './power-component.component.html',
  styleUrls: ['./power-component.component.css']
})
export class PowerComponentComponent implements OnInit {

  numbers = this.loopFunction();

  powerlevel = 0;

  constructor() { }

  loopFunction(){
    let values = [];

    for(let i = 0; i <= 100; i ++){
      values.push(i);
    }
    return values;
  }

  powerLevel(param){
    console.log("we clicked the button: ", param)
  }


  ngOnInit() {
  }

}
