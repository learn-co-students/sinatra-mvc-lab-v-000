require 'pry'

class PigLatinizer
   attr_accessor :words

   def piglatinize(word)
      break_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]

      vowels = ['a', 'e', 'i', 'o', 'u']

      if vowels.include?(word[0].downcase) || break_words.include?(word.downcase)
         word << "ay"
      
      else
         consonants = ""
         while !vowels.include?(word[0])
            consonants << word
            word = word.split("")[1..-1].join
         end
         word + consonants + 'ay'
      end
   end


      def make_pig_latin(word)
         words.split.collect do |word|
            piglatinize(word)
         end.join(" ")
      end

end
