
class PigLatinizer

  attr_accessor :word

  @@vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]


  def initialize
    @word = word
  end

  def piglatinize(word)

    array = word.split("")

      if array[0] == "a" || array[0] == "A" || array[0] == "e" || array[0] == "E"
        first_letter = array[0]
        array.shift
        new_array = array.push(first_letter)
        new_word = new_array.push("w", "a", "y").join("")
        return new_word
      elsif array[0] == "i" || array[0] == "I" || array[0] == "o" || array[0] == "O" || array[0] == "u" || array[0] == "U"
        first_letter = array[0]
        array.shift
        new_array = array.push(first_letter)
        new_word = new_array.push("w", "a", "y").join("")
        return new_word
      end

      @@vowels.each do |letter|
          if array[0] != letter && array[1] != letter
          first_letter = array[0]
          second_letter = array[1]
          array.shift
          array.shift
          new_array = array.push(first_letter)
          new_array = array.push(second_letter)
          new_word = new_array.push("a", "y").join("")
          return new_word
          end
      end

        @@vowels.each do |letter|
          if array[0] != letter && array[1] == letter
          first_letter = array[0]
          array.shift
          new_array = array.push(first_letter)
          new_word = new_array.push("a", "y").join("")
          return new_word
          end #if iteration
        end #each iteration

  end #method

end
