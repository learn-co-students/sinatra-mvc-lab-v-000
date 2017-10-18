require 'pry'

class PigLatinizer
  attr_reader :result

  def to_pig_latin(words)
    text_to_translate = words.split(" ")
    @result = text_to_translate.collect {|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = ('a'..'z').to_a - vowels
    if vowels.include?(word.downcase[0])
      return word + "way"
    elsif word.length == 1
      return word + "way"
    end

    if consonants.include?(word.downcase[0])
      if vowels.include?(word.downcase[1])
        return word[1..-1] + word[0] + "ay"
      elsif consonants.include?(word.downcase[1]) && consonants.include?(word.downcase[2])
        return word[3..-1] + word[0..2] + "ay"
      elsif consonants.include?(word.downcase[1])
        return word[2..-1] + word[0..1] + "ay"
      end
    end
    word
   end


end
