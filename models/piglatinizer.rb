require 'pry'
class PigLatinizer
  attr_reader :text 
  
  
  def piglatinize(sentence)
    sentence.split(" ").collect do |word|
      pig_word(word) 
    end.join(" ")
  end
  
  def pig_word(word)
     pig = word.split("")
      first1 = pig.first
      if first1.match(/[AEOIUaoiue]/)
        pig << "way"
        pig.join("")
      else 
        pig.collect do |letter|
          #binding.pry
          if !letter.match(/[AEOIUaoiue]/)
            word = word.split("").rotate.join
          else 
            return word << "ay"
          end 
        end 
    end
  end 
end 

