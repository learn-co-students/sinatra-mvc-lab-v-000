require 'pry'
class PigLatinizer

  attr_accessor :word

   def to_pig_latin(string)
    stripped = string.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
    word_array = stripped.split(" ")
    pig_array = word_array.collect do |word|
        piglatinize(word)
    end
    pig_array.join(" ")
  end

  def piglatinize(word)
    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    if non_pig_latin_words.include?(word)
      word
    else
      reverse_word = word.split(/([aeiou].*)/).reverse.join+"ay"
    end
  end

end