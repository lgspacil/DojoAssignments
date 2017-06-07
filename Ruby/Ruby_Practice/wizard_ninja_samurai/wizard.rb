require_relative "human"


class Wizard < Human

	def initialize
		super
		@health = 50
		@intelligence = 25
	end

	def heal
		@health += 10
	end

	def fireball(obj)
		if obj.class.ancestors.include?(Human)
    		obj.health -= 20
    	else
    		false
    	end
    end

end

w1 = Wizard.new
w2 = Wizard.new

w1.attack(w2)
puts w2.health
