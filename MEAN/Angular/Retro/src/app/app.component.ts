import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Retro Barcode Generator';

  

  randomColor(){
    let colors = ['red', 'blue', 'Chartreuse ', 'green', 'yellow', 'pink', 'purple', 'orange', 'black', 'DarkCyan '];
    
    let color_array = [];

    for(let i =0; i < 10; i++){

      let num = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
      color_array.push(colors[num]);

    }

    return color_array;
  }

  a_color = this.randomColor();

  
}
