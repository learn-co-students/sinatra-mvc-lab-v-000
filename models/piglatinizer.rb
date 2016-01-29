require 'pry'

class PigLatinizer
  attr_accessor :dropped_letters

  def initialize
    @dropped_letters = ""
  end

  def drop_beginning_consonant(word)
    if word.downcase.start_with?("b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z")
      @dropped_letters << word.slice!(0)
      drop_beginning_consonant(word)
    end
    word
  end

  def piglatinize(word)
    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    if non_pig_latin_words.include?(word)
      return word
    elsif word.scan(/\b[bcdfghjklmnpqrstvwxyz]{1,}/i) != []
      new_word = drop_beginning_consonant(word)
      letters_array = new_word.split("")
      letters_array << @dropped_letters
    else
      letters_array = word.split("") 
    end
    letters_array << "ay"
    @dropped_letters = ""
    piglatin_word = letters_array.join
  end
  
  def to_pig_latin(phrase)
    words_array = phrase.gsub(".", "").split(" ")
    words_array.collect do |word| 
      piglatinize(word)
    end.join(" ")
  end
end