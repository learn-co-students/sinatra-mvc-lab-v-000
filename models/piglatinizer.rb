# class PigLatinizer
#   def piglatinize(words)
#     alpha = ('a'..'z').to_a
#     vowels = %w(a e i o u)
#     consonants = alpha - vowels

#     if vowels.include?(words[0].downcase)
#       words + 'way'
#     elsif consonants.include?(words[0]) && consonants.include?(words[1]) && consonants.include?(words[2])
#       words[3..-1] + words[0..2] + 'ay'
#     elsif consonants.include?(words[0]) && consonants.include?(words[1])
#       words[2..-1] + words[0..1] + 'ay'
#     elsif consonants.include?(words[0])
#       words[1..-1] + words[0] + 'ay'
#     else
#       words.downcase
#     end
#   end

#   def to_pig_latin(phrase)
#     phrase.split(' ').map { |w| piglatinize(w) }.join(' ')
#   end
# end

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

  def to_pig_latin(phrase)
    phrase.split(' ').map{|w| self.piglatinize(w)}.join(' ')
  end

end