require_relative "human"


class Ninja < Human

	def initialize
		super
		@stealth = 175
	end

	def steal(obj)
		attack(obj)
		@health += 10
	end

	def get_away
		@health -= 15
	end

end

n1 = Ninja.new
n2 = Ninja.new

n1.get_away
puts n1.health

puts "=========="

n1.steal(n2)
puts n1.health
puts n2.health
