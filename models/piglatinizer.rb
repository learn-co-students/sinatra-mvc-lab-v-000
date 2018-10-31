require 'pry'

class PigLatinizer

  def initialize(string)
    @orig_string = string
  end

  def piglatinize_word(word)
    if start_with_vowel?(word)
      new_word = word + "ay"
    else
      new_word = word[1..-1] + word[0] + "ay"
    end
    new_word
  end

  def piglatinize
    new_phrase = @orig_string.split.collect {|w| piglatinize_word(w)}.join(" ")
    new_phrase
  end

  def start_with_vowel?(word)
    "AaEeIiOoUu".split("").include?(word[0])
  end
end
