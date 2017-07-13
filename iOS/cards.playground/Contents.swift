//: Playground - noun: a place where people can play

import UIKit


struct Card {
    var value: String
    var suit: String
    var numerical_value: Int
    // This show method come in useful. Use it to make sure your other methods are working.
    func show(){
        print(value, "of", suit, ": value", numerical_value)
    }
}


class Deck{
    
    var cards = [Card]()
    
    init(){
        self.reset()

    }
    
    func deal() -> Card? {
        if self.cards.count > 0 {
            // This if check makes sure that there are cards in the deck to be dealt
            return self.cards.remove(at: 0)
        }
        else {
            return nil
        }
    }
    
    func reset(){
        let values = ["Ace","2","3","4","5","6","7","8","9","10","Jack","Queen","King"]
        let suits = ["Clubs", "Spades", "Hearts", "Diamonds"]
        for suit in suits {
            // For each suit, we'll make 13 new cards and add them to our deck
            for i in 0...12 {
                let newCard = Card(value: values[i], suit: suit,  numerical_value: i+1)
                self.cards.append(newCard)
            }
        }
    }
    
    func shuffle(){
        for i in stride(from: self.cards.count-1, to: 0, by: -1) {
            // Working backwards, for each card in the deck, we'll generate a random number to target another card in the deck and have them trade places.
            let swapCardIndex = Int(arc4random_uniform(UInt32(i)))
            let temp = self.cards[i]
            self.cards[i] = self.cards[swapCardIndex]
            self.cards[swapCardIndex] = temp
        }
    }
    
    func show(){
        for card in self.cards {
            card.show()
        }
    }
}



class Player{
    
    var name: String
    var hand: [Card] = []
    
    init(name: String){
        
        self.name = name
        
    }
    
    
    func draw(deck: Deck) -> Card? {
        if let drawnCard = deck.deal(){
            hand.append(drawnCard)
            return drawnCard
        }else{
            return nil
        }
    }
    
    func discard(suit: String, value: String) -> Bool {
        // For this method, we'll need to know the suit and value of the card that the user would like to discard
        for i in 0...self.hand.count-1 {
            if (self.hand[i].suit == suit && self.hand[i].value == value) {
                self.hand.remove(at: i)
                return true
            }
        }
        return false
    }
    
    func show(){
        for card in self.hand{
            card.show()
        }
    }
    
}



let newDeck = Deck()
newDeck.shuffle()
//newDeck.show()

let lucas = Player(name: "Lucas")
lucas.draw(deck: newDeck)
lucas.draw(deck: newDeck)
lucas.show()


