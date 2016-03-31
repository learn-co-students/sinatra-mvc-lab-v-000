class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase="pork")
    @phrase = phrase
  end

  def piglatinize(word)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(word.downcase[0])
      word + 'way'
    elsif consonants.include?(word.downcase[0]) && consonants.include?(word.downcase[1]) && consonants.include?(word.downcase[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word.downcase[0]) && consonants.include?(word.downcase[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word.downcase[0])
      word[1..-1] + word[0] + 'ay'
    else
      word
    end
  end

  def to_pig_latin(sentence)
    a1 = sentence.split(" ")
    a2 = []

    if a1.kind_of?(Array)
      a1.each do |word|
        a2 << piglatinize(word)
      end
    else
      a2 << piglatinize(word)
    end
    a2.join(" ")
  end
  
  def piglatin_from_variable
    to_pig_latin(@phrase)
  end

end