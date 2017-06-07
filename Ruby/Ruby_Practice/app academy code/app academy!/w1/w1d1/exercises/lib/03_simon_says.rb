def echo(str)
  str
end

def shout(str)
  shout = []
  words = str.split
  words.each do |el|
    shout << el.upcase
  end
  shout.join(" ")
end

def repeat(str, n = 2)
arr = []
  until arr.length == n 
  arr << str
end
arr.join(" ")
end

def start_of_word (word , n)
  word[0..n-1]
end

def first_word (sentence)
  words = sentence.split
  words[0]
end

def titleize(sentence)
  titles = []
  little_words = %w(the and a)
    words = sentence.split
    words.each do |word|
      if word == "the" || word == "a" || word == "and" || word == "over"
        titles << word
      else
        titles << word.capitalize!
      end
      titles[0].capitalize!
    end
titles.join(" ")
end
