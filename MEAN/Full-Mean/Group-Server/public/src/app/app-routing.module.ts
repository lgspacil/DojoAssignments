import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HiddenComponent } from './hidden/hidden.component';

const routes: Routes = [
  // {path: '', redirectTo: '/hidden', pathMatch: 'full'},
  // {path: 'hidden', component: HiddenComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
