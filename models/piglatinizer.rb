class PigLatinizer

  attr_accessor :words

  def initialize(words = nil)
    @words = words
  end

  def piglatinize(word)
    
    vowels = ['a', 'e', 'i', 'o', 'u']
    alpha = ('a'..'z').to_a
    consonants = alpha - vowels

      if vowels.include?(word.downcase[0])
        word + 'way'
      elsif consonants.include?(word.downcase[0]) && consonants.include?(word.downcase[1]) && consonants.include?(word.downcase[2])
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word.downcase[0]) && consonants.include?(word.downcase[1])
        word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word.downcase[0])
        word[1..-1] + word[0] + 'ay'
      end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end