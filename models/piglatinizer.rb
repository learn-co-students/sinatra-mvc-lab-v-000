require 'pry'
class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = ('a'..'z').to_a - vowels
    if vowels.include?(word[0].downcase)
      return word + "way"
    elsif consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
      return word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[1].downcase)
      return word[2..-1] + word[0..1] + "ay"
    else
      return word[1..-1] + word[0] + "ay"
    end
  end

  def to_pig_latin(string)
    str_array = string.split
    str_array.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
