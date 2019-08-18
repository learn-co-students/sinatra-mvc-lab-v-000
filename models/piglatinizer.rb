class PigLatinizer
  attr_reader :phrase

  def initialize
    @phrase = phrase
  end

  def piglatinize(phrase)
    string = phrase.downcase
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(string[0])
      phrase + 'way'
    elsif consonants.include?(string[0]) && consonants.include?(string[1]) && consonants.include?(string[2])
      phrase[3..-1] + phrase[0..2] + 'ay'
    elsif consonants.include?(string[0]) && consonants.include?(string[1])
      phrase[2..-1] + phrase[0..1] + 'ay'
    elsif consonants.include?(string[0])
      phrase[1..-1] + phrase[0] + 'ay'
    else
      phrase
    end
  end

  def to_pig_latin(sentence)
    sentence.split.map { |phrase| piglatinize(phrase) }.join(" ")
  end

end
