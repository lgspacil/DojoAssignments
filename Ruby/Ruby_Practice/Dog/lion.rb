require_relative 'mammal'

class Lion < Mammal
	def initialize
		@health = 170
	end

	def fly
		@health -= 10
	end

	def attack_town
		@health -= 50
	end

	def eat_humans
		@health += 20
	end

	def display_health
		puts "This is a lion"
		super
	end
end

l1 = Lion.new()
l1.display_health
