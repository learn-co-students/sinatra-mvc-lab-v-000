require 'pry'

class PigLatinizer
  attr_accessor :phrase, :string_array

  def word_array(word)
    word_array = word.split("")
    word_array.piglatinize
  end



  def piglatinize(word)
    word_array = word.split("")

    length = word_array.count
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    result = []
    letter = word_array[0]
    if !vowels.include?(letter)
      word_array = word_array[1..length-1].push(letter)
      word_joined = word_array.join("")
      piglatinize(word_joined)
      binding.pry
    else

      word_array.push("w")
    end
    result = word_array
    #binding.pry
    result.concat(["a", "y"])


    return result.join("")
  end
end
