import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html', //represents the html
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
  users: (string|object)[] = [
    {email: 'bill@gates.com', level: 'High', subject: 'New Windows', content: 'Windows XI will launch in year 2100'},
    {email: 'ada@lovelace.com', level: 'High', subject: 'Programming', content: 'Enchantress of Numbers'}, 
    {email: 'john@carmac.com', level: 'Low', subject: 'Updated Algo', content: 'New Algorithm for shadow volumes'}
  ];


};

