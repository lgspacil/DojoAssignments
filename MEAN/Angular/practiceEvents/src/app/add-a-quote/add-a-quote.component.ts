import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-add-a-quote',
  templateUrl: './add-a-quote.component.html',
  styleUrls: ['./add-a-quote.component.css']
})
export class AddAQuoteComponent implements OnInit {

  tableInfo =
    {quote: '',
    author: '',
    vote_score: 0}

  result = [];



  constructor() { }

  submitform(data){
    console.log("submitting this form got this info: ", this.tableInfo)
    console.log("the is the data", data)

    this.result.push(this.tableInfo);

    this.tableInfo = {quote: '',
    author: '', vote_score: 0}

    data.resetForm()

    console.log("the results are now: ", this.result)
  }

  deleteQuote(quote){
    console.log("the parent has received the quote", quote);

    let x = this.result.indexOf(quote);

    this.result.splice(x, 1);
  }

  addOneVote(quote){
    console.log("We are now in the parent class adding one vote!", quote)

    let x = this.result.indexOf(quote);

    this.result[x].vote_score += 1;
  }
  
  delOneVote(quote){
    let x = this.result.indexOf(quote);
    this.result[x].vote_score -= 1;
  }

  ngOnInit() {
  }

}
