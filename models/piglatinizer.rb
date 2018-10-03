require 'pry'

class PigLatinizer
  attr_accessor :phrase



  def piglatinize(user_phrase)
    array = @phrase.split(//)
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
