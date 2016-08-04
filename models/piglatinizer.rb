require 'pry'
class PigLatinizer
  attr_accessor :user_input

  def initialize
    @user_input = user_input
  end

  def piglatinize(pig_word)
    # take in a word and move the letters around and add either "ay" or "way" to the ending
    # if the word starts with a vowel, it should end with "way"
    # if a word starts with 2 consonants it should end in "way" and the beginning 2 consonants get moved to the end of the word before adding the suffix.
    #if a word starts with 1 consonant, it should ned in "ay"
    vowels = ["a", "e", "i", "o", "u"]
    word = pig_word.split("")
    new_word = []
    first_letter = ""

    if vowels.include? word[0].to_s.downcase
      new_word << word
      new_word << "way"

    else
      # first_letter = word.shift
      first_letter = pig_word.split(/([aeiou].*)/)

      new_word << first_letter[1]
      new_word <<  first_letter[0] + "ay"
    end
      updated = new_word.join("")

  end

  def to_pig_latin(phrase)
    separated = phrase.split(" ")
    piggied = []
    separated.each do |x|
      piggied << piglatinize(x)

    end
    piggied.join(" ")

  end
end
