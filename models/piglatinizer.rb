require 'pry'

class PigLatinizer

  def piglatinize(word)
    word_array = word.split("")
    if word_array[0] == "a" || word_array[0] == "e" || word_array[0] == "i" || word_array[0] == "o" || word_array[0] == "u"
      word_array << word_array.shift
    end
    word_array << "ay"
    word_array.join
  end
  binding.pry

  def vowel?(letter)
    letter.scan(/[aAeEiIoOuU]/)
  end

end

  PigLatinizer.new.piglatinize('apple')
