require 'pry'
class PigLatinizer

  @@vowels = ['a','e','i','o','u']

  def initialize

  end

  def piglatinize(words)
    words_arr = words.split(" ")
    pig_latin = []

    words_arr.each do |word|
      split_word = word.split("")
      if @@vowels.include?(split_word[0].downcase)
        # Starts with a vowel
        pig_latin << word + "way"
      else
        # Starts with a consonant, find the first vowel
        index = split_word.find_index{|letter| @@vowels.include?(letter)}
        # The word starting from the first vowel + the consonant(s) from the beginning + "ay"
        pig_latin << split_word[index..split_word.length()].join("") + split_word[0..index-1].join("") + "ay"
      end

    end

    pig_latin.join(" ")
  end

end
