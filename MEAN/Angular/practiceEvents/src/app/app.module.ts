import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { MyComponentComponent } from './my-component/my-component.component';
import { TaskComponent } from './task/task.component';
import { NoteComponent } from './note/note.component';
import { NoteListComponent } from './note/note-list/note-list.component';
import { VideoReviewComponent } from './video-review/video-review.component';
import { TaskListComponent } from './video-review/task-list/task-list.component';
import { TaskEditComponent } from './video-review/task-edit/task-edit.component';
import { AddAQuoteComponent } from './add-a-quote/add-a-quote.component';
import { QuoteListComponent } from './add-a-quote/quote-list/quote-list.component';

//add the bottom two to the app.module.ts list
import { HttpService } from './http.service'
import { HttpModule } from '@angular/http';
import { GithubComponentComponent } from './github-component/github-component.component';

@NgModule({
  declarations: [
    AppComponent,
    MyComponentComponent,
    TaskComponent,
    NoteComponent,
    NoteListComponent,
    VideoReviewComponent,
    TaskListComponent,
    TaskEditComponent,
    AddAQuoteComponent,
    QuoteListComponent,
    GithubComponentComponent
  ],

  //add HttpModeul into the imports array
  imports: [
    HttpModule,
    BrowserModule,
    FormsModule
  ],
  providers: [HttpService],
  bootstrap: [AppComponent]
})
export class AppModule { }
