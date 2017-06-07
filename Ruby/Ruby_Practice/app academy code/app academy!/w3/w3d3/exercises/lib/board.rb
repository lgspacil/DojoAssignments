 class Board
  attr_accessor :grid


  def self.new_grid
    grid = []
    array = []
    (1..8).each { |i| array << nil}
    (1..8).each { |i| grid << array}
    grid
  end


  def initialize(grid = self.class.default_grid)
    @grid = grid
  end

  def display
    puts grid
  end

  def count
    counter = 0

    @grid.each do |row|
      row.each do |mark|
        if mark != nil
          counter += 1
        end
      end
    end

    counter
  end

  def empty?(pos = nil)
    if pos == nil && self.count > 0
      false
    elsif pos == nil && self.count == 0
      true
    elsif @grid[pos[0]][pos[1]] == nil
      true
    else
      false #if none of the conditions are met
    end
  end

  def full?
    counter = 0

    @grid.each do |row|
      row.each do |el|
        if el == nil
          counter += 1
        end
      end
    end

    if counter > 0
      false
    else
      true #if all the board is full of hits and misses
    end
  end

  def won? #counts all the hits and nils in the board, if they equal the number of ships on the board the game is over
    counter1 = 0
    counter2 = 0

    @grid.each do |row|
      row.each do |el|
        if el == nil
          counter1 += 1
        elsif el == :x
          counter2 += 1
        end
      end
    end

    if counter1 + counter2 == @grid.size ** 2
      true
    else
      false
    end
  end

  def place_random_ship
    raise "Board is full" if full?

    @grid[rand(grid.length)][rand(grid.length)] = :s
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, val)
    x, y = pos
    grid[x][y] = val
  end
end
end
