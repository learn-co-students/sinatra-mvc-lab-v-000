require 'pry'
class PigLatinizer

  def piglatinize(text)
    text_1 = text.split(' ')
    alpha = ('a'..'z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    consonants = alpha - vowels
    if text_1.count == 1
      if vowels.include?(text_1[0][0])
        text_1[0] + 'way'
      elsif consonants.include?(text_1[0][0]) && consonants.include?(text_1[0][1]) && consonants.include?(text_1[0][2])
        text_1[0][3..-1] + text_1[0][0..2] + 'ay'
      elsif consonants.include?(text_1[0][0]) && consonants.include?(text_1[0][1])
        text_1[0][2..-1] + text_1[0][0..1] + 'ay'
      elsif consonants.include?(text_1[0][0])
        text_1[0][1..-1] + text_1[0][0] + 'ay'
      end

    else
    array = text_1.collect do |word|
      if vowels.include?(word[0].downcase)
        word + 'way'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
        word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word[0].downcase)
        word[1..-1] + word[0] + 'ay'
      end
    end
    array.join(' ')
  end
  end
end
