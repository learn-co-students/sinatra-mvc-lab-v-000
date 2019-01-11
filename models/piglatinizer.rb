require 'pry'

class PigLatinizer
  attr_accessor :phrase, :string_array


  def piglatinize(word)
    word_array = word.split("")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    result = []
    word_array.each_with_index do |letter, index|
      #binding.pry
      until vowels.include?(letter)
        result = word_array[1..index-1].push(letter)
        #word_array
        binding.pry
        result.join("")
      end
    end
    return result
  end


end
