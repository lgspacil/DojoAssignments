class Hangman

  GUESSES_LEFT = 8 
  attr_reader :guesser, :referee, :board

  def initialize(players = {})
     @guesser = players[:guesser]
     @referee = players[:referee]
   end

  def setup
    secret_word_length = @referee.pick_secret_word
    @guesser.register_secret_length(secret_word_length)
    @board = "_" * secret_word_length
  end


end

class HumanPlayer

end

class ComputerPlayer

end
