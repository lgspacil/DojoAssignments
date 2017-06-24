import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
// importing classes from the components
import { WeatherComponent } from './weather/weather.component';
import { SkyComponent } from './sky/sky.component';
import { TempComponent } from './temp/temp.component';
import { WindComponent } from './wind/wind.component';


const routes: Routes = [
    //the first is what we want to thr url to match
    //the second param is what class in the component we want to load component we want to load
    // pathMatch: 'full' matches the exact path
    // redirectTo will automatically redirect you to another component and it takes the place of a Component
    {path: '', redirectTo: '/temp', pathMatch: 'full'},
    {path: 'temp/:temp', component: TempComponent},
    {path: 'wind/:speed', component: WindComponent},
    {path: 'sky/:clouds', component: SkyComponent},
];


export const routing = RouterModule.forRoot(routes);


