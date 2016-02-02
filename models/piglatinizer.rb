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
    omit = ["i", "an", "in", "a", "and"]
    bigalpha = ('A'..'Z').to_a
    bigvowels = %w[A E I O U]
    bigconsonants = bigalpha - bigvowels
    words.gsub!(/[.,]/, "")

    if omit.include?(words)
      return words
    elsif vowels.include?(words[0])
      words + 'ay'
    elsif consonants.include?(words[0]) && consonants.include?(words[1])
      now = words[2..-1] + words[0..1] + 'ay'
    elsif consonants.include?(words[0])
      now = words[1..-1] + words[0] + 'ay'
    elsif bigvowels.include?(words[0])
      words[3..-1] + words[0..2] + 'ay'
    elsif bigconsonants.include?(words[0]) && consonants.include?(words[1])
      words[3..-1] + words[0..2] + 'ay'
    elsif bigconsonants.include?(words[0])
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