import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-note',
  templateUrl: './note.component.html',
  styleUrls: ['./note.component.css']
})
export class NoteComponent implements OnInit {

  names = [
    {name: "Lucas",
    last_name: "Spacil"},

    {name: "Monika",
    last_name: "Spacil"}
  ]

  constructor() { }

  deleteName(obj){
    console.log("in the parent", obj)

    let index = this.names.indexOf(obj);
    this.names.splice(index, 1); 
  }


  // notes = [
  //   {title: 'first note'},
  //   {title: 'second_note'}
  // ];

  // product = 0;

  // invoked(){
  //   return "Lucas";
  // }

  // mult(num){
  //   this.product = (num * 2);
  // }

  // dataFromChild(data){
  //   console.log(data);
  // }

  

  ngOnInit() {
  }

}
