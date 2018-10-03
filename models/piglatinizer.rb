require 'pry'

class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def latinizer
    array = @text.split(//)
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end


end
