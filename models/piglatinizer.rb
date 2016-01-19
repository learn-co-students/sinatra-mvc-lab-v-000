require 'pry'

class PigLatinizer
  
  def piglatinize(word)
 
     vowels = %w[a e i o u]
     exceptions = ['a', 'i', 'to', 'me', 'an', 'in']

     if exceptions.include?(word)
     word     
     elsif vowels.include?(word[0]) 
       word << "ay"
     else
        consonants = word.scan(/\b[^aeiou\s\.]+/i)
        new_word = word.gsub(/\b[^aeiou\s\.]+/i, "") << consonants[0] << "ay"
     end
  end
 
   def to_pig_latin(sentence)
     sentence.split(" ").collect{|word| piglatinize(word)}.join(" ")
   end

end 