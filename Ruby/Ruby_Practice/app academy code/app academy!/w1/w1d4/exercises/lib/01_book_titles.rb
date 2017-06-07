class Book

attr_reader :title


def title= (title)
  lowercased = %w(a an in the of the and)

  title = title.split
  titleized = []
  title.each do |word|
    if lowercased.include?(word)
      titleized << word
    else
      titleized << word.capitalize
    end
  end

  titleized[0].capitalize!

  @title = titleized.join(" ")
  end
end

@book = Book.new

puts @book.title = "inferno"