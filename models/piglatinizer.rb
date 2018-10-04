require 'pry'

class PigLatinizer
  attr_accessor :phrase, :string_array

  def consonant(string_array)
    string_array.concat(["#{string_array[0]}"])
    string_array.shift
    string_array
  end



  def piglatinize(input_string)
    @string_array = input_string.split(//)
    vowel_array = ["a", "e", "i", "o", "u"]

    if vowel_array.include?(string_array[0]) == false
      self.consonant(string_array)
      #letter = string_array[0]
      #string_array.concat(["#{letter}"])
      #string_array.shift
      #string_array.piglatinize

    elsif vowel_array.include?(string_array[0])
      string_array.concat(["w", "a", "y"])
      string_array.join()


    end
  end

  def consonant(string_array)
    string_array.concat(["#{string_array[0]}"])
    string_array.shift
    string_array
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end


end
