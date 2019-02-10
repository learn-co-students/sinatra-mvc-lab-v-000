class PigLatinizer

  def pig_latin_word(word)
    word_array = word.split("")
    current_index = 0

    until ["a", "e", "i", "o", "u"].include?(word_array[current_index].downcase)
      word << word_array[current_index]
      word.slice!(0)
      current_index += 1
    end

    current_index == 0 ? word << "way" : word << "ay"
  end

  def piglatinize(phrase)
    phrase_array = phrase.split(" ")

    phrase_array.collect{ |word|
      pig_latin_word(word)
    }.join(" ")
  end

end
