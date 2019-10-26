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

  def to_pig_latin(sentence)
    revised_sentence = ''
    sentence.split.each do |word|
      revised_sentence << piglatinize(word) + " "
    end
    revised_sentence.rstrip
  end

end
