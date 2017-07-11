require 'pry'

class PigLatinizer
  CONSONANT = "ay"
  VOWEL = "way"


  def piglatinize(word)
      if word.downcase.match(/\A[bcdfghjklmnpqrstvwxyz]/)
        split_word = word.split(/[aeiou]/)
        new_word = word.sub("#{split_word[0]}", "") + split_word[0] + CONSONANT
      elsif word.downcase.match(/\A[aeiou]/)
        new_word = word + VOWEL
      end
    new_word
  end

  def to_pig_latin(sentence)
    arr = sentence.split(" ")
    arr.collect do |words|
      piglatinize(words)
    end.join(" ")
  end
end
