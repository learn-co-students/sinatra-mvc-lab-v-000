require 'pry'
class PigLatinizer





    def piglatinize(phrase)
      vowels = %w[a e i o u]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]

    if phrase.split.count == 1

      if vowels.include?(phrase.downcase[0])
        phrase + 'way'
      elsif consonants.include?(phrase.downcase[0]) && consonants.include?(phrase.downcase[1]) && consonants.include?(phrase.downcase[2])
        phrase[3..-1] + phrase[0..2] + 'ay'
      elsif consonants.include?(phrase.downcase[0]) && consonants.include?(phrase.downcase[1])
        phrase[2..-1] + phrase[0..1] + 'ay'
      elsif consonants.include?(phrase.downcase[0])
        phrase[1..-1] + phrase[0] + 'ay'
      end

    elsif phrase.split.count > 1
      phrase.split(" ").collect {|word| piglatinize(word)}.join(" ")
    end
  end

end
