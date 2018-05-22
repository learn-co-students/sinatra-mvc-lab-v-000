class PigLatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def convert
    current = @phrase.split(" ")
    current.map {|word| word << "way"}
    @phrase = current.join(" ")
  end

end