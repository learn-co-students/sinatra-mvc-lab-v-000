require 'pry'
class PigLatinizer
  attr_accessor :phrase

  def piglatinize(word)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    word_letters = word.split("")

     if vowels.include?(word_letters[0])
       phrase = word + "way"
       phrase
     else
       while !vowels.include?(word_letters[0])
        word_letters << word_letters.shift
      end
      word_letters.join.to_s + "ay"
     end
   end


   def to_pig_latin(words)


     sentance = words.split(" ")
     pig_sentance = []
      sentance.each do |word|
      pig_sentance << piglatinize(word)
      end
      pig_sentance.join(" ").to_s
   end





end
