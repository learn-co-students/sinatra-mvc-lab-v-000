require 'pry'

class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def latinizer
    array = @text.split(//)
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
