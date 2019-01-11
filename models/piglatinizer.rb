require 'pry'

class PigLatinizer
  attr_accessor :phrase, :string_array


  def piglatinize(word)
    word_array = word.split("")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    result = []
    word_array.each_with_index do |letter, index|
      #binding.pry
      if !vowels.include?(letter)
        result = word_array[1..index-1].push(word_array[0])
      end
      #binding.pry
    end
    binding.pry
    result.concat(["a", "y"])
    result.join("")
    return result
    binding.pry
  end


end
