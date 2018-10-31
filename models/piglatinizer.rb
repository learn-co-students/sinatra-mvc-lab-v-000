require 'pry'

class PigLatinizer

  def initialize(string)
    @orig_string = string
  end

  def piglatinize_word(word)
    if start_with_vowel?(word)
      @orig_string + "ay"
    else
      @orig_string[1..-1] + @orig_string[0] + "ay"
    end
  end

  def piglatinize
    words = @orig_string.split(" ")
    words.collect {|w| piglatinize_word(w)}
    words.join(" ")
  end

  def start_with_vowel?(word)
    "AaEeIiOoUu".split("").include?(word[0])
  end
end
