require 'pry'

class PigLatinizer
  attr_accessor :phrase, :string_array



  def piglatinize(word)
    word_array = word.split("")
    length = word_array.count
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    result = []
    letter = word_array[0]
    if !vowels.include?(letter)
      word_array = word_array[1..length-1].push(letter)
      piglatinize(word_array.join(""))
    else
      word_array.push("w")
    end
    result = word_array
    #binding.pry
    result.concat(["a", "y"])
    #binding.pry
    result.join("")
    #return result
    #binding.pry
  end


end
