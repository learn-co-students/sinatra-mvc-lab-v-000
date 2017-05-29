require 'pry'
class PigLatinizer
  def to_pig_latin(text)
    text.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end
  def piglatinize(text)
    alpha = ('a'..'z').to_a
    alpha += ('A'..'Z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels
    if vowels.include?(text[0]) # if the first char is a vowel
      return text + 'way'
    elsif consonants.include?(text[0])
      chars = text.split("")
      first_vowel = chars.index(chars.find{|l| vowels.include?(l)})
      return text[first_vowel..-1] + text[0..first_vowel-1] + 'ay'
    else
      return text
    end
  end
end
