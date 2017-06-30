require 'pry'

class PigLatinizer


  def initialize
  end

  def piglatinize(word)

    vowel_sounds = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    if vowel_sounds.include?(word[0])
      word + "way"
       else
         consonants = ""
         while !vowel_sounds.include?(word[0])
           consonants << word[0]
           word = word.split("")[1..-1].join
         end
         word + consonants + "ay"
    end

   end







  def to_pig_latin(sentence)
    sentence.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
