require 'pry'

class PigLatinizer
  attr_reader :word

  def initialize
  end

  def piglatinize(word)
    word_array = word.split("")
    #binding.pry
    length = word_array.count
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    result = []
    letter = word_array[0]

    if !vowels.include?(letter)
      #binding.pry
      starts_with_consonant(word_array)
    elsif vowels.include?(letter) && word_array != nil
      #binding.pry
      result = word_array.concat(["w", "a", "y"])
    end

    result.join("")

  end



  def starts_with_consonant(word_array)
    #binding.pry
    length = word_array.count
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    result = []
    letter = word_array[0]
    if length == 1
      result = word_array.concat(["w", "a", "y"])
      return result.join("")
    end
    if !vowels.include?(letter)
      word_array = word_array[1..length-1].push(letter)
      #binding.pry
      starts_with_consonant(word_array)
    else
      new_result = word_array
    end
    if new_result != nil
      new_result_concat = new_result.concat(["a", "y"])
    end
    if new_result_concat != nil
      new_result_join = new_result_concat.join("")
    end


    new_result_join

  end
end
