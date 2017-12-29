class PigLatinizer
  attr_accessor :words
  def initialize
  end

  def piglatinize(str)
    words = str.split.collect {|word|
      alphabet = ('a'..'z').to_a
      vowels = ["a", "e", "i", "o", "u"]
      consonants = alphabet - vowels

      if vowels.include?(word[0].downcase)
        word + 'way'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
              word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word[0].downcase)
        word[1..-1] + word[0] + 'ay'
      else
        word
      end
    }.join(" ")
  end

  def to_pig_latin(str)
    piglatinized_sentence = piglatinize(str)
  end

end
