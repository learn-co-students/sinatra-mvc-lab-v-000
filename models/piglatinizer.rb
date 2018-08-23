require 'pry'

class PigLatinizer
   # attr_accessor :text

   # def initialize(text)
   #    @text = text
   # end

   def piglatinize(text)
      arr = text.split(" ")
      newword = []
      arr.each do |i|
         newword << changeword(i)
      end
      newword.join(" ")
   end

   def changeword(word)
      newword = []
      if word.start_with?(/[aeiouAEIOU]/)
         newword << word+"way"
      else
         word2 =''
         word1 = word.split('')
         until "aeiouAEIOU".include?(word1[0])
            word2 += word1.shift
         end
         newword << word1 << word2 << "ay"
      end
      newword.join
   end
end