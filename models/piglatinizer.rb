require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(word)
    first_letter = word.chars[0].downcase
    vowels = ["a", "e", "i", "o", "u"]
    first_vowel_index = word.chars.find_index do |l|
      vowels.include?(l)
    end
    if !vowels.include?(first_letter)
        split = word.split("")[(first_vowel_index)..-1]
        split << word.split("")[0..(first_vowel_index-1)]
        split << "ay"
        split.join("")
    else
      word << "way"
      word
    end
  end

  def to_pig_latin(phrase)
    pig_latinized = []
    phrase_words = phrase.split(" ")
    phrase_words.each do |word|
      pig_latinized << self.piglatinize(word)
    end
    pig_latinized.join(" ")
  end

end
