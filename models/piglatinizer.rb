require "pry"
 class PigLatinizer

   #def piglatinize(word)
   #  word_arr = word.split(//)
   #  vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
   #  if vowels.include?(word_arr[0])
   #    word_arr << "way"
   #  else
   #    while vowels.include?(word_arr[0]) == false do
   #      word_arr << word_arr.shift
   #    end
   #    word_arr << "ay"
   #  end
   #  word_arr.join
   #end

   def piglatinize(word)
     word_arr = word.split(//)
     if !word_arr[0].scan(/[AEIOUaeiou]/).empty?
       word_arr << "way"
     else
       while word_arr[0].scan(/[AEIOUaeiou]/).empty? do
         word_arr << word_arr.shift
       end
       word_arr << "ay"
     end
     word_arr.join
   end

   def to_pig_latin(text)
     text_arr = text.split(" ")
     text_arr.collect do |word|
       piglatinize(word)
     end.join(" ")
   end

 end
