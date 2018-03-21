#(word_array[0] == "a" ) || (word_array[0] == "e") || (word_array[0] == "i") || (word_array[0] == "o") || (word_array[0] == "u")
require 'pry'
class PigLatinizer
  attr_reader :words

  def piglatinize(input_string)
    x = (input_string.split(" ").length == 1)? piglatinize_word(input_string) : piglatinize_sentence(input_string)
    x
  end

  def piglatinize_word(word)
    #any word beginning with a constonant, place constonant at end of word and place 'ay' on the end
    word = word.split("")
    if !word[0].match(/[aeiouAEIOU]/)
      until word[0].match(/[aeiouAEIOU]/)
        word = word.rotate!
      end
      new_word = " "
      new_word = word.join("") + "ay"

    #any word begining with a vowel +> add 'way'
    else
      new_word = word.join('')
      new_word += "way"
    end
    new_word
  end

    def piglatinize_sentence(words)
      array_of_words = words.split(" ")
      new_phrase = ""
      array_of_words.each do |w|
        new_phrase += " " + piglatinize(w)
      end
      new_phrase.strip
    end

end
