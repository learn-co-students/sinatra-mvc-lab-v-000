require 'pry'
class PigLatinizer
  attr_accessor :piglatinized_words
  @@vowels = ["a","e","i","o","u","A","E","I","O","U"]

  def initialize

  end

  def piglatinize(input)
    @piglatinized_words = []
    input.split(' ').each do |word|
      if starts_with_vowel?(word)
        convert_vowel_word(word)
      else
        convert_consonant_word(word)
      end
    end
    @piglatinized_words.join(' ')
  end

  def starts_with_vowel?(word)
    letters = word.split('')
    @@vowels.include?(letters[0])
  end

  def convert_vowel_word(word)
    piglatin_word = word + 'way'
    @piglatinized_words << piglatin_word
  end

  def convert_consonant_word(word)
    letters = word.split('')
    letters.each do |letter|
      if @@vowels.include?(letters[0])
        break
      else
        consonant = letters.shift
        letters.push(consonant)
      end
    end

    piglatin_word = letters.push('a','y').join('')
    @piglatinized_words << piglatin_word
  end

end
