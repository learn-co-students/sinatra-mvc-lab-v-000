require 'pry'

class PigLatinizer

  def piglatinize(word)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels

    if vowels.include?(word[0])
      word = word + "way"
    elsif vowels.include?(word[1])
      word = word[1..-1] + word[0] + "ay"
    elsif vowels.include?(word[2])
      word = word[2..-1] + word[0..1] + "ay"
    elsif vowels.include?(word[3])
      word = word[3..-1] + word[0..2] + "ay"
    else
      word
    end
  end

  def to_pig_latin(phrase)
    new_array = []
    array = phrase.split(" ")
      array.each do |word|
        word = piglatinize(word)
        new_array << word
      end
    new_phrase = new_array.join(" ")
    return new_phrase
  end

end
