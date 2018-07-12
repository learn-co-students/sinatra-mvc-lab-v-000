class PigLatinizer

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def pig_it
    new_phrase = @word.split(" ")
    first_letter = @word.slice!(0)
    "#{@word}#{first_letter}ay"
  end

end
