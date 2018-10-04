require 'pry'

class PigLatinizer
  attr_accessor :phrase



  def piglatinize(input_string)
    string_array = input_string.split(//)
    vowel_array = ["a", "e", "i", "o", "u"]
    if vowel_array.include?(string_array[0])
      string_array.concat(["w", "a", "y"])
      string_array.join()
      
    end
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end


end
