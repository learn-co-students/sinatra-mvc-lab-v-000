require 'pry'
class PigLatinizer

  def piglatinize(word) #word = "pork"
   piglatinize_word(word)
   sentence(word)
  end

  def piglatinize_word(word) #char = "pork"
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
   
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
  end

  def sentence(sentence)
     sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end

  
end