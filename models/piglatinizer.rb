#(word_array[0] == "a" ) || (word_array[0] == "e") || (word_array[0] == "i") || (word_array[0] == "o") || (word_array[0] == "u")
require 'pry'
class PigLatinizer
  attr_reader :words


  def piglatinize(word)
    #any word begining with a vowel +> add 'way'
    #any word beginning with a constonant, remove constonaent and place 'ay' on the end
    word_array = word.split(" ")
    #binding.pry
    if word_array.length > 1
      return splits(word)
    end
    #binding.pry
    word = word.split("")
    if !word[0].match(/[aeiouAEIOU]/)
      until word[0].match(/[aeiouAEIOU]/)
        word = word.rotate!
      end
      new_word = " "
      new_word = word.join("") + "ay"
    else
      new_word = word.join('')
      new_word += "way"
    end
    new_word
    #binding.pry
  end

    def splits(words)
      #binding.pry
      array_of_words = words.split(" ")
      #binding.pry
      new_phrase = ""
      array_of_words.each do |w|
        new_phrase += " " + piglatinize(w)
      end
      new_phrase.strip
      #binding.pry
    end

end
