import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule } from '@angular/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NoteComponent } from './note/note.component';
import { NoteListComponent } from './note-list/note-list.component';
import { FormsModule } from '@angular/forms';
import { HttpService } from './http.service';
import { HiddenComponent } from './hidden/hidden.component';

@NgModule({
  declarations: [
    AppComponent,
    NoteComponent,
    NoteListComponent,
    HiddenComponent
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
