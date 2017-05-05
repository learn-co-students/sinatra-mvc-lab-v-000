require 'pry'

class PigLatinizer
  def piglatinize(word)
    # find where the first vowel appears
    first_vowel_index = word.downcase.index(/[aeiou]/)

    if first_vowel_index == 0 # word begins with vowel
      word + 'way'
    else # begins with consonants
      word[first_vowel_index..-1] + word[0..first_vowel_index - 1] + 'ay'
    end
  end

  def to_pig_latin(words)
    phrase = words.split(" ")
    sentence = phrase.map { |word| piglatinize(word) }
    sentence.join(" ")
  end

end
