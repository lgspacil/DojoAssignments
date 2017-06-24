import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DashboardComponent } from "app/dashboard/dashboard.component";
import { LoginComponent } from "app/login/login.component";
import { TopicComponent } from "app/topic/topic.component";
import { UserProfileComponent } from "app/user-profile/user-profile.component";

const routes: Routes = [
  {
    path: '',
    children: []
  },

  {path: 'dashboard', component: DashboardComponent},
  {path: '', component: LoginComponent},
  {path: 'topic/:id', component: TopicComponent},
  {path: 'user/:id', component: UserProfileComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
