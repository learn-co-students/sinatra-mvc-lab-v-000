class PigLatinizer
  attr_accessor :english

  def initialize
    @english = english
  end

  def piglatinize(english)
    first_letter = nil
    english.strip.downcase.scan(/[a-z]+/).map do |word|
      first_letter = word.slice!(0)
      word << first_letter + "ay"
    end.join(" ")
  end

end