class BattleshipGame
  attr_reader :board, :player

  def initialize (player = HumanPlayer.new("Admiral"), board = Board.new )
    @player = playe
    @board = board
    @hit = false
  end


  def attack(target)
    board[target] = :x

    if board[target] == :self
      @hit = true
    else
      @hit = false
    end
  end

  def count
    board.count
  end

  def game_over?
    board.won?
  end

  def play_turn
    target = player.get_play
    attack(target)

    display_status
  end

  def play
    play_turn until game_over?
  end

  def display_status
    board.display

    if @hit == true
      puts "Attack hits"
      puts "There are #{count} ships remaining."
    else
      puts "Attack miss"
    end

    @hit = false
  end
end
