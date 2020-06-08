require 'pry'
class PigLatinizer
  attr_accessor :phrase

  def piglatinize(word)
    word_array = word.split("")

    if word_array.length == 1
      word + "way"

    elsif vowel?(word_array[0])
      word_array.join + "way"

    else
      consonants = []
      new_array = word_array.slice(0, word_array.length)

      word_array.map do |letter|
        if consonant?(letter)
          consonants << new_array.shift

        else
          new_array.push(consonants)
          break
        end
      end
      new_array.push("a", "y")
      new_array.flatten.join
    end
  end

  def consonant?(letter)
    #[bcdfghjklmnpqrstvwxyz]
    if letter.scan(/[^aeiouAEIOU\W]/) != []
      true
    else
      false
    end
  end

  def vowel?(letter)
    if letter.scan(/[aeouiAEIOU]/) != []
      true
    else
      false
    end
  end

  def to_pig_latin(phrase)
    phrase_array = phrase.split
    hazer_array = []

    phrase_array.each do |word|
      hazer_array << piglatinize(word)
    end
    hazer_array.join(" ")
  end

end
