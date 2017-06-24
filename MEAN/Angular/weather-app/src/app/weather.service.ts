import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs' //this is for using map

@Injectable()
export class WeatherService {

  //the constructor is making a private vaiable that is of type Http
  constructor(private _http: Http) { }


  getWeather(zip){
    //we want the service to be able to grab data from the API
    return this._http.get("http://api.openweathermap.org/data/2.5/weather?zip="+zip+",us&units=imperial&APPID=bb928725dc4b57216334e06c6fbafa99").map((data)=> data.json()).toPromise()

  }

}
