import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule } from '@angular/http';
import { AppRoutingModule } from './app-routing.module';
import { FormsModule } from '@angular/forms';
import { HttpService } from "app/http.service";

import { AppComponent } from './app.component';
import { PlayersComponent } from './players/players.component';
import { GetPlayer1Component } from './get-player-1/get-player-1.component';
import { BattlePlayer1Component } from './battle-player-1/battle-player-1.component';
import { ResultsComponent } from './results/results.component';
import { RankListComponent } from './rank-list/rank-list.component';


@NgModule({
  declarations: [
    AppComponent,
    PlayersComponent,
    GetPlayer1Component,
    BattlePlayer1Component,
    ResultsComponent,
    RankListComponent
  ],
  imports: [
    HttpModule,
    FormsModule,
    BrowserModule,
    AppRoutingModule
  ],
  providers: [HttpService],
  bootstrap: [AppComponent]
})
export class AppModule { }
