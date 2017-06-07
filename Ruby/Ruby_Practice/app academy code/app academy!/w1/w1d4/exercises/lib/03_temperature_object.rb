class Temperature
  attr_accessor :temperature

  def initialize(options = {})
    if options[:f]
      @fahrenheit = options[:f]
    else
      @celsius = options[:c]
    end
  end

  def ftoc(temp)
    (temp - 32) * (5.0 / 9.0)
  end

  def ctof(temp)
     (temp * (9.0/5.0) + 32.0)
  end

  def in_fahrenheit
@fahrenheit == nil ? (ctof(@celsius)) : @fahrenheit
  end

  def in_celsius
@celsius == nil ? (ftoc(@fahrenheit)) : @celsius
  end

  def self.from_fahrenheit(passed_temp)
     self.new(f: passed_temp)
   end


   def self.from_celsius(passed_temp)
     self.new(c: passed_temp)
   end


end



class Celsius
end

class Farenheit
end
