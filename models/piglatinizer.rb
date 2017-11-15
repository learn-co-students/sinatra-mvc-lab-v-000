require 'pry'
class PigLatinizer

  def piglatinize(word)
    if ["A","E","I","O","U", "a", "e", "i","o","u"].include?(word[0])
      word << "way"
    else
      word = word.split("")
      word.each_with_index do |l, i|
        if ["a","e","i","o","u"].include?(l) && !["a","e","i","o","u"].include?(word[0..(i-1)])
          word = word.join("")
          consonants_before_vowel = word[0..(i-1)]
          word.slice!(consonants_before_vowel)
          word << consonants_before_vowel
          break
        end
      end
      word << "ay"
    end
  end

  def to_pig_latin(sentence)
    pig_sentence = sentence.split(" ").map do |word|
      piglatinize(word)
    end
    pig_sentence.join(" ")
  end
end
