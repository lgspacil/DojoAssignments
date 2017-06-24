import { Component, OnInit } from '@angular/core';
import { HttpService } from '../http.service';

@Component({
  selector: 'app-github-component',
  templateUrl: './github-component.component.html',
  styleUrls: ['./github-component.component.css']
})
export class GithubComponentComponent implements OnInit {

    //we must create a constructor for services..
  constructor(private _httpService: HttpService){}

  result = null;
  username: string = '';

  //create this function! 
  // when you call _httpService we are being referred back to the http.server.ts
  showThis(){
    this._httpService.retrieveTasks(this.username)
    .then( data => { this.result = data }) //this is a successfull call
    .catch( err => { console.log("we got an error", err); })

  }



  //as soon as page loads the functino under us runs
  ngOnInit() {
  }

}
