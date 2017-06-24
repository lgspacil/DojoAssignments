import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { GetPlayer1Component } from "app/get-player-1/get-player-1.component";
import { ResultsComponent } from "app/results/results.component";
import { RankListComponent } from "app/rank-list/rank-list.component";



const routes: Routes = [
  {path: '', redirectTo: '', pathMatch: 'full'},
  {path: 'result', component: ResultsComponent},
  {path: 'rankings', component: RankListComponent},


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }


