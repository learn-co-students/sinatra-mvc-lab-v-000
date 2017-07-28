require 'pry'
class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def word_splitter(phrase)
    phrase.split(" ")
  end

  def to_pig_latin(phrase)
    @text = phrase
    piglatinizing
  end

  def piglatinize(word)
    if word[0].downcase.scan(/[aeoui]/).count == 0
      #doesn't start with a vowel
        removed_letters = []
        array_of_letters = word.split("")
        first_vowel_index = array_of_letters.each_index.detect{|l| ["a","e","i","o","u"].include?(array_of_letters[l].downcase)}
        removed_letters = array_of_letters.shift(first_vowel_index)
        fixed_word = array_of_letters << removed_letters
        new_word = fixed_word.join
        if new_word[-1].scan(/[aeoui]/).count == 0
          return new_word << "ay"   #doesn't end in a vowel
        else
          return new_word << "way"  #does end in a vowel
        end
    else #does start with a vowel
      new_word = word << "way"
    end
      new_word
  end

  def piglatinizing
    words = word_splitter(@text)
    words.map! do |word|
      piglatinize(word)
    end
    words.join(" ")
  end
end