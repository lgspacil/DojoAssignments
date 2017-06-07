tower1 = []
tower2 = []
tower3 = []

puts "How many discs would you like to start with?"
discs = gets.chomp.to_i

(1..discs).each do |disc|
  tower1 << disc
end
final = tower1.reverse
tower1.reverse!
moves = 0

while true
  puts "Here is how the game board looks right now:"
  puts "Tower 1: #{tower1}"
  puts "Tower 2: #{tower2}"
  puts "Tower 3: #{tower3}"

  puts "Please select what tower you want to chose from:"
  select = gets.chomp.to_i
  puts "Please select what tower you want to place disc:"
  destination = gets.chomp.to_i

  if select == 1 && destination == 1
    puts "You can't put the same disc where you got it from!"
    puts ""
  end
  if select == 1 && destination == 2
    if tower2.length == 0 || tower1.last < tower2.last
      tower2 << tower1.pop
      moves += 1
    else
      puts "Invalid move. You can't place a bigger tile on top of a smaller one."
      puts "Try again!"
      puts ""
    end
  end
  if select == 1 && destination == 3
    if tower3.length == 0 || tower1.last < tower3.last
      tower3 << tower1.pop
      moves += 1
    else
      puts "Invalid move. You can't place a bigger tile on top of a smaller one."
      puts "Try again!"
      puts ""
    end
  end

  if select == 2 && destination == 2
    puts "You can't put the same disc where you got it from!"
    puts ""
  end
  if select == 2 && destination == 1
    if tower1.length == 0 || tower2.last < tower1.last
      tower1 << tower2.pop
      moves += 1
    else
      puts "Invalid move. You can't place a bigger tile on top of a smaller one."
      puts "Try again!"
      puts ""
    end
  end
  if select == 2 && destination == 3
    if tower3.length == 0 || tower2.last < tower3.last
      tower3 << tower2.pop
      moves += 1
    else
      puts "Invalid move. You can't place a bigger tile on top of a smaller one."
      puts "Try again!"
      puts ""
    end
  end
  if select == 3 && destination == 3
    puts "You can't put the same disc where you got it from!"
    puts ""
  end
  if select == 3 && destination == 1
    if tower1.length == 0 || tower3.last < tower1.last
      tower1 << tower3.pop
      moves += 1
    else
      puts "Invalid move. You can't place a bigger tile on top of a smaller one."
      puts "Try again!"
      puts ""
    end
  end
  if select == 3 && destination == 2
    if tower2.length == 0 || tower3.last < tower2.last
      tower2 << tower3.pop
      moves += 1
    else
      puts "Invalid move. You can't place a bigger tile on top of a smaller one."
      puts "Try again!"
      puts ""
    end
  end
  if tower2 == final || tower3 == final
    puts "You win the game! You did it in #{moves} moves!"
    break
  end
end
beginner ruby