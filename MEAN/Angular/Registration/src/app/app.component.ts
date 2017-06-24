import { Component } from '@angular/core';
import { User } from './user';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent  {
  
  user = new User();
  users = [];
  congrats = '';


  submitform(form){
   
    this.congrats = "Thank you for registering with us " + this.user.fname; 
    this.users.push(this.user);
    this.user= new User();

    form.resetForm();


    

  }

}
