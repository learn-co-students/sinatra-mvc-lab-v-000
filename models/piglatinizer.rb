require 'pry'

class PigLatinizer

  def piglatinize(word)
    word_array = word.split(/([aeiouAEIOU].*)/)
    consonants = word_array[0]
    vowels = word_array[1]
    if word.downcase.start_with?("a", "e", "i", "o", "u")
      translated_word = vowels + consonants + "way"
    else
      translated_word = vowels + consonants + "ay"
    end
    translated_word
  end

end
