class HumanPlayer
  def initialize(name)
    @name = name
  end

  def get_play
    puts "Please enter a move in the format (x, y)"

    move = gets.chomp.split(", ")
    move.map { |coordinates| coordinates.to_i }
  end
end
