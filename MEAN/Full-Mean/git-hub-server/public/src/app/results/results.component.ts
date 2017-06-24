import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-results',
  templateUrl: './results.component.html',
  styleUrls: ['./results.component.css']
})
export class ResultsComponent implements OnInit {
  @Input() player1;
  @Input() player2;

  score1 = 0;
  score2 = 0;

  message_winner = "";

  message_looser = "";

  winner_img = "";

  constructor() { }




  ngOnInit() {
    this.score1 = (this.player1.public_repos + this.player1.followers)*12;

    this.score2 = (this.player2.public_repos + this.player2.followers)*12;

    if (this.score1 > this.score2){
      this.message_winner = this.player1.login +" (Score: "+ this.score1 + ")";
      this.message_looser = this.player2.login +" (Score: "+ this.score2 + ")";
      this.winner_img = this.player1.avatar_url;
    }
    else{
      this.message_winner = this.player2.login +" (Score: "+ this.score2 + ")";
      this.message_looser = this.player1.login +" (Score: "+ this.score1 + ")";
      this.winner_img = this.player2.avatar_url;
      
    }
  }

}
