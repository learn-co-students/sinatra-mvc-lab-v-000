require 'pry'

class PigLatinizer

  def piglatinize_word(word)
    if start_with_vowel?(word)
      new_word = word + "way"
    elsif combo_sound_3?(word)
      new_word = word.slice(3..-1) + word.slice(0..2) + "ay"
    elsif combo_sound_2?(word)
      new_word = word.slice(2..-1) + word.slice(0..1) + "ay"
    else
      new_word = word[1..-1] + word[0] + "ay"
    end
    new_word
  end

  def combo_sound_2?(word)
    combo = ["pl", "pr", "th", "spr"]
    combo.include?(word[0..1])
  end

  def combo_sound_3?(word)
    combo = ["spr"]
    combo.include?(word[0..2])
  end

  def piglatinize(phrase)
    new_phrase = phrase.split.collect {|w| piglatinize_word(w)}.join(" ")
    new_phrase
  end

  def start_with_vowel?(word)
    "AaEeIiOoUu".split("").include?(word[0])
  end
end
