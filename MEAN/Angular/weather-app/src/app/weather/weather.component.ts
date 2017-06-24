import { Component, OnInit } from '@angular/core';
//we are importing the serive that we created in the weather.service file
import { WeatherService } from './../weather.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-weather',
  templateUrl: './weather.component.html',
  styleUrls: ['./weather.component.css']
})
export class WeatherComponent implements OnInit {
  //decalre all the variables up here.

  zip: string;
  weather = null;
  errors = null;

  //setting up variables in the constructor _weatherService to be of type WeatherService
  //_weatherService is now a class and we can now access the methods we created in there from weather.service such as getWeather
  constructor(private _weatherService: WeatherService, private _router: Router) { }


  //when the page loads it will automatically run this function
  ngOnInit() {
  }

  getWeather(){
    // when we call this function we get back a Promise, promises have a then and catch
    this._weatherService.getWeather(this.zip)
    .then((data) => {console.log("we got this information thanks to our serviec", data)
      this.weather = data;
      this.errors = null;
      //if everything goes well we want to automatially route us to the temperature spot.
      this._router.navigate(['/temp', this.weather.main.temp]);
    })
    //if something goes wrong we want to catch it in the error
   .catch((err) => {console.log("we got an error when trying to fetch info from the service", err)
      this.weather = null;
      if (err.status == '400' || err.status == '404'){
        this.errors = "the zip code: "+ (this.zip).toString() + " does not exist!";
      }
    }) 

  }
}