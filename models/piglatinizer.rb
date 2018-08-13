require 'pry'
class PigLatinizer

  def consonant?(letter)
    ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"].include?(letter)
  end

  def piglatinize_word(word)
    #if first letter is a vowel
    if !consonant?(word[0])
      word = word + "way"
    #first three letters are consonants
  elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word[3..-1] + word[0..2] + "ay"
    #first two letters are consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word[2..-1] + word[0..1] + "ay"
    #one consonants
    elsif consonant?(word[0])
      word = word[1..-1] + word[0] + "ay"
    end
    word
  end

  def piglatinize_sentence(sentence)
    array = sentence.split(" ")
    new_array = array.collect do |word|
      piglatinize_word(word)
    end
    new_array.join(" ")
  end

  def piglatinize(string)
    if string.split(" ").length == 1
      piglatinize_word(string)
    else
      piglatinize_sentence(string)
    end
  end

end
