def reverser(&prc)
  str = prc.call
  word = str.split(" ")
  word.map { |word| word.reverse} .join(" ")
end

def adder(n = 1, &prc)
  value = prc.call
  value += n
end

def repeater(repeats = 1, &prc)
  repeats.times do
    prc.call
  end
end

