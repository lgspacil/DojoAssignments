function Deck(){
	this.buildDeck();
}

Deck.prototype.buildDeck = function(){
	
	var suits = ["Hearts", "Spades", "Diamonds", "Clubs"];
	var values = ["A" , "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"];
	this.cards = [];

	for (var i = 0; i < suits.length; i++){
		for (var x =0; x < values.length; x++){
			this.cards.push(values[x] +" of "+ suits[i])
		}
	}
	return this

}


Deck.prototype.shuffle = function(){

	
	for (var i = 0; i < 52; i++){
		rand_num = Math.floor(Math.random() * (25 - 1 + 1)) + 1;
		var temp = this.cards[i]
		this.cards[i] = this.cards[rand_num];
		this.cards[rand_num] = temp;
	}

	return this
}

Deck.prototype.reset = function(){
	this.buildDeck();
}


Deck.prototype.deal = function(player){

	this.dealt_cards = this.cards.pop();
	player.hand.push(this.dealt_cards);
	return this

}

function Player(name){
	this.name = name;
	this.hand = [];
}

Player.prototype.discard = function(){
	this.hand.pop();
}


var p1 = new Player("Lucas");
var d1 = new Deck();

d1.shuffle()
d1.deal(p1).deal(p1);

console.log(p1.hand)
p1.discard();
console.log(p1.hand)

console.log("========================")





