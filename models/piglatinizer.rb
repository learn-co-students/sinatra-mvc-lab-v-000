
require 'pry'
class PigLatinizer
  attr_reader :words


  def piglatinize(word)
    #any word begining with a vowel +> add 'way'
    #any word beginning with a constonant, remove constonaent and place 'ay' on the end
    word_array = word.downcase.split("")
    if word_array.first.include?("a" || "e" || "i" || "o" || "u")
      new_word = " "
      new_word = word_array.join("") + "way"
    else
      new_word = " "
      f = word_array.first
      word_array.insert(4, f)
      word_array.shift
      new_word = word_array.join('')
      new_word += "ay"
    end
    new_word
    #binding.pry
  end

    def splits(words)
      array_of_words = words.split(" ")
      new_phrase = ""
      array_of_words.each do |w|
        new_phrase += " " + piglatinize(w)
      end
      new_phrase
      binding.pry
    end

end
