class Player
	attr_accessor :hand, :name

	def initialize(name)
		@name = name
		@hand = []
	end

	def draw(get_cards)
		@hand << get_cards
		@hand.flatten!
		self
	end

	def discard(n)
		if n <= @hand.length
			n.times do 
				@hand.pop
			end
		else
			puts "You can not get rid of more cards than you have!"
		end
		self
	end

	def show_hand()
		puts @hand
	end

end


class Deck

	def initialize()
		@suits = ["hearts", "spades", "clubs", "diamonds"]
		@values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
		@cards = []
		create
		
	end

	def reset
		create
		self
	end

	def show
		puts @cards
	end

	def shuffle
		@cards = @cards.shuffle!
		self
	end

	def deal(n) 
		result = []
		n.times do
			result << @cards.pop 
		end
		return result
	end

	private
	def create
		@suits.each do |s|
			@values.each do |v|
				@cards << v + " of "+ s
			end
		end
		self
	end

end

d1 = Deck.new()
d1.shuffle().reset().show()

puts "reset the deck"


puts "====================="


# p1 = Player.new("Player")
# puts "Player is going to draw cards"
# p1.draw(d1.deal(10))
# p1.show_hand()

# puts "=========================="

# puts "PLayer will discard cards"
# p1.discard(8).show_hand()
# # puts "We have these cards left over"
# # p1.show_hand()

