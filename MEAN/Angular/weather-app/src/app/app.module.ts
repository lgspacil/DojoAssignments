import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { WeatherComponent } from './weather/weather.component';
import { WindComponent } from './wind/wind.component';
import { TempComponent } from './temp/temp.component';
import { SkyComponent } from './sky/sky.component';
import { WeatherService } from './weather.service';
import { HttpModule } from '@angular/http';
import { FormsModule } from '@angular/forms';
import { routing } from './app.routes';


@NgModule({
  declarations: [
    AppComponent,
    WeatherComponent,
    WindComponent,
    TempComponent,
    SkyComponent
  ],
  imports: [
    FormsModule,
    HttpModule,
    BrowserModule,
    routing
  ],
  providers: [WeatherService ],
  bootstrap: [AppComponent]
})
export class AppModule { }
