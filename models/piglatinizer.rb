require 'pry'
class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def to_pig_latin(sentence)
    sentence.split.map{|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    split_word_array = word.split(//)
    first_letter_array = [split_word_array[0]]
     if (first_letter_array & vowels).empty?
     split_on_vowel = word.split(/([aeiou].*)/)
     new_word = split_on_vowel[1] + split_on_vowel[0] + "ay"
     new_word
    else
      new_word = word + "way"
      new_word
    end
  end
end