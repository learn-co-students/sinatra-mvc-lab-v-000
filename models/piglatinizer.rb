require 'pry'

class PigLatinizer
  attr_accessor :phrase



  def piglatinize(input_string)
    array = input_string.split(//)
    if [aeiou].include?(array[0])
      array.concat(["w", "a", "y"])
      array
    end
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end


end
