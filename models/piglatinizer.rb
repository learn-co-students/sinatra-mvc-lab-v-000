require 'pry'

class PigLatinizer 

  def piglatinize(word)
    basewords = ["a", "and", "i", "an", "in", "I"] #words to ignore
    vowels = ["a","e","i","o","u"]
    cvowels = ["A","E","I","O","U"]

      if basewords.include?(word)
        word 

      else #else piglatinize
      word_array = word.scan(/./)

        if cvowels.include?(word_array[0])
          word = word_array.rotate(-1).join + "ay" 
            word
        elsif vowels.include?(word_array[0]) 
          #if vowels.include?(word_array[-1])  
          #else  
            word = word_array.join + "ay" 
            word 
          #end  
        else #word starts with consonant
          until vowels.include?(word_array[0])
            word_array = word_array.rotate
          end
          word_array.join + "ay"  
        end       
      end
  end #piglatinize

  def to_pig_latin(phrase)
    if phrase.include?(".")
      phrase_array = phrase.gsub!(".", "").split(' ')
    else
      phrase_array = phrase.split(' ')
    end
    phrase_array.collect{|word| piglatinize(word)}.join(" ")
end

end #class PigLatinizer