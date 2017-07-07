class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = letters - vowels

    if vowels.include?(words[0])
      vowel = words[0]
      words + "way"
      #"words + 'ay'"
    elsif consonants.include?(words[0])
      #"words[1..-1] + words[0] + 'ay'"
      words[1..-1] + words[0] + "ay"
    elsif consonants.include?(words[0]) && consonants.include?(words[1])
      words[2..-1] + words[0] + "ay"
      #"words[2..-1] + words[0..1] + 'ay'"
    else
      words # return unchanged
    end
  end
end
