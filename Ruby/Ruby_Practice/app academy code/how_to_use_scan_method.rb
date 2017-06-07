string = "ap"
animals = {"apple" => 1, "banana" => 2, "cup" => 3, "dogs" => 4, "app" => 5}



list = animals.select {|word, num| word.scan(string).join("") == string}
puts list.keys