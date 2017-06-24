import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app';

  today: any = '';

  d = new Date();
  localTime = this.d.getTime();

  localOffest = this.d.getTime() *60000;
 

  printing(){
    console.log(this.localOffest);
  }

  color = [false, false, false, false, false];

  clicked(str){
    if(str == "PST"){
      this.color = [false, false, false, false, false];
      this.color[0] = true;
      return this.today = new Date().toLocaleString("en-US", {timeZone: "America/Los_Angeles"});
    }
    else if(str == "MST"){
      this.color = [false, false, false, false, false];
      this.color[1] = true;
      return this.today = new Date().toLocaleString("en-US", {timeZone: "America/Denver"});
    }
    else if(str == "CST"){
      this.color = [false, false, false, false, false];
      this.color[2] = true;
      return this.today = new Date().toLocaleString("en-US", {timeZone: "America/Chicago"});
    }
    else if(str == "EST"){
      this.color = [false, false, false, false, false];
      this.color[3] = true;
      return this.today = new Date().toLocaleString("en-US", {timeZone: "America/New_York"});
    }
    
  }

  clear(){
    this.color = [false, false, false, false, false];
    return this.today = '';
  }
}
