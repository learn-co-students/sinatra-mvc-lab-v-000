class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = letters - vowels

    if words.include?(vowels[0])
      words + 'ay'
    elsif words.include?(consonants[0]) && words.include?(consonants[1])
      words[2..-1] + words[0..1] + 'ay'
    elsif words.include?(consonants[0])
      words[1..-1] + words[0] + 'ay'
    else
      words # return unchanged
    end
  end
end
