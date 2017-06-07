class Human

	attr_accessor :strength, :intelligence, :stealth, :health

	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end

	def attack(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 10
		end
	end
end


h1 = Human.new
h2 = Human.new

puts h1.attack(h2)
puts h2.health
puts h1.health
