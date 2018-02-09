require 'pry'

class PigLatinizer

  def piglatinize(word)

    alphabet = ('a'..'z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alphabet - vowels

    if vowels.include?(word[0])
      (word + 'way')
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      (word[3..-1] + word[0..2] + "ay")
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      (word[2..-1] + word[0..1] + "ay")
    elsif consonants.include?(word[0])
      (word[1..-1] + word[0] + "ay")
    end

  end

  def to_pig_latin(sentence)
    new_sentence = []
    alphabet = ('a'..'z').to_a
    alpha_caps = ('A'..'Z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = (alphabet + alpha_caps) - vowels
    words = sentence.split(" ")

    words.each do |word|

      if vowels.include?(word[0])
        new_sentence << (word + 'way')
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        new_sentence << (word[3..-1] + word[0..2] + "ay")
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        new_sentence << (word[2..-1] + word[0..1] + "ay")
      elsif consonants.include?(word[0])
        new_sentence <<(word[1..-1] + word[0] + "ay")
      end
    end
    new_sentence.join(" ")
  end

end
