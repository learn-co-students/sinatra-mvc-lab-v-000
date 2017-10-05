require 'pry'
require 'awesome_print'

class PigLatinizer

  ALPHABET = ('a'..'z').to_a
  VOWELS = ['a', 'e', 'i', 'o', 'u']
  CONSONANTS = ALPHABET - VOWELS

  def find_first_vowel_index(word)
    word.split('').each_with_index do |letter, index|
      if VOWELS.include? letter
        return index
      end
    end
  end

  def piglatinize(word)
    if VOWELS.include? word[0].downcase
      return word + "way"
    else
      first_vowel_index = find_first_vowel_index(word)
      word_first_part = word[0..(first_vowel_index - 1)]
      word_second_part = word[first_vowel_index..100]
      return "#{word_second_part}#{word_first_part}ay"
      # binding.pry
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split
    latinized_words = []

    words.each do |word|
      latinized_words << piglatinize(word)
    end

    return latinized_words.join(' ')
  end
end
