require 'pry'

class PigLatinizer

  def to_pig_latin(text)
    piglatinize(text)
  end

  def piglatinize(text)
    words = text.split(" ")
    words_array = []
    words.each do |word|
      word_array = word.split("")
      #binding.pry
      if consonant_sound(word_array)
        word_array.each do
          letter = word_array[0]
          word_array << letter
          word_array.shift
          break if vowel_sound(word_array)
        end
        word_array << "ay"
        words_array << word_array.join
      elsif vowel_sound(word_array)
        word_array << "way"
        words_array << word_array.join
      end

    end

    result = words_array.join(" ")
    result
  end

  def consonant_sound(text_array)
    if ((text_array[0] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)) != nil)
      true
    else
      false
    end
  end

  def vowel_sound(text_array)
    if ((text_array[0] =~ (/[aeiouAEIOU]/)) != nil)
      true
    else
      false
    end
  end

end
