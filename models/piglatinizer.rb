require 'pry'
class PigLatinizer

Vowels = %w(a e i o u)
Consonants = %w(b c d f g h j k l m n p q r s t v w x y z)

  def piglatinize(word)
    if Vowels.include?(word.downcase[0])
      word + 'way'
    elsif Consonants.include?(word.downcase[0]) && Consonants.include?(word.downcase[1]) && Consonants.include?(word.downcase[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif Consonants.include?(word.downcase[0]) && Consonants.include?(word.downcase[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif Consonants.include?(word.downcase[0])
      word[1..-1] + word[0] + 'ay'
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end
end
