class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    first_letter = nil
    words.strip.downcase.scan(/[a-z]+/).map do |word|
      first_letter = word.slice!(0)
      word << first_letter + "ay"
    end.join(" ")
  end

end