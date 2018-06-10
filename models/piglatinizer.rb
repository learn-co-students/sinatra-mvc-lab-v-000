require 'pry'

class PigLatinizer

  # def initialize(words)
  #   @words = words
  # end

  def piglatinize(word)
    # phrase = @words.downcase
    # vowels = %w(a e i o u)
    # phrase = words.split(' ')
    consonants = ('a'..'z').to_a - %w(a e i o u)
    piglatin = ''

    # phrase.each do |w|

    if !consonants.include?(word[0].downcase)
      pl =  word + 'way'
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
      pl =  word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
      pl =  word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0].downcase)
      pl =  word[1..-1] + word[0] + 'ay'
    else
      pl =  word
    end
    piglatin += pl
    piglatin.strip
  end

  def to_pig_latin(words)
    # binding.pry
    x = words.split(" ")
    # binding.pry
    x = x.each do |word|
      piglatinize(word)
  end
  x.join(" ")
end


end
