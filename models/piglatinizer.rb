class PigLatinizer

  attr_accessor :words

  def initialize
    @words = words
  end


  def piglatinize(words)
    # words = words.split(" ")
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    omit = ["i"]

    if omit.include?(words)
      return words
    elsif vowels.include?(words[0])
      words + 'ay'
    elsif consonants.include?(words[0]) && consonants.include?(words[1])
      words[2..-1] + words[0..1] + 'ay'
    elsif consonants.include?(words[0])
      words[1..-1] + words[0] + 'ay'
    else
      words # return unchanged
    end
  end

  def to_pig_latin(words)
    p = words.split(" ").map do |word|
      piglatinize(word)
    end
    p.join(" ")
  end

end