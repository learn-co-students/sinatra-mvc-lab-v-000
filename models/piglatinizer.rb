class PigLatinizer
  attr_accessor :english

  def initialize(english)
    @english = english.strip.downcase
  end

  def translate
    first_letter = nil
    english.scan(/[a-z]+/).map do |word|
      first_letter = word.slice!(0)
      word << first_letter + "ay"
    end.join(" ")
  end

end