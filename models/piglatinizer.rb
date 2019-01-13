require 'pry'

class PigLatinizer
  attr_reader :word

  def initialize
  end

  def piglatinize(word)
    word_array = word.split("")
    length = word_array.count
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    result = []
    letter = word_array[0]
    if vowels.include?(letter) || length == 1
      result = word_array.concat(["w", "a", "y"])
    end
    if !vowels.include?(letter) && word_array != nil
      word_array = word_array[1..length-1].push(letter)
      letter = word_array[0]
      if !vowels.include?(letter)
        word_array = word_array[1..length-1].push(letter)
        letter = word_array[0]
        if !vowels.include?(letter)
          word_array = word_array[1..length-1].push(letter)
          letter = word_array[0]
        end
      end
      result = word_array.concat(["a", "y"])
    end
    result.join
  end

end
