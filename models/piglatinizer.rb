require 'pry'

class PigLatinizer
    attr_accessor :text_from_user

    def initialize
        
    end
   def piglatinize(word)
        alpha = ('a'..'z').to_a
        vowels = %w[a e i o u A E I O U]
        consonants = alpha - vowels
            if consonants.include?(word[0])
                if consonants.include?(word[1]) && consonants.include?(word[2])
                    word[3..-1] << word[0..2] + "ay"
              elsif consonants.include?(word[1])
                word[2..-1] << word[0..1] + "ay"
                else
                 word[1..-1] << word[0] + "ay"
                   # binding.pry
             end
             elsif vowels.include?(word[0])
                    word << "way"
            end
    end
   def to_pig_latin(sentence)
       array = []
      
       
       sentence.split.each {|word| array << piglatinize(word)}
        
        array.join(" ")
    end
            
end