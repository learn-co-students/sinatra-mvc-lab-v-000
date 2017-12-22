class PigLatinizer
    attr_accessor :raw_text

    def initialize
    end

    def piglatinize(raw_text)
        pigged_string = raw_text.split.map{|word| pig_the_word(word)}
        pigged_string.join(" ")
    end

    def to_pig_latin(raw_text)
        piglatinize(raw_text)
    end


    def pig_the_word (word)
        if begins_with_vowel?(word)
          
          word = word + "way"
        else
          add_to_back = ""
          while !begins_with_vowel?(word)
            
            add_to_back << word[0]
            word = word[1..-1]
            
          end
          
          word + add_to_back + "ay"
        end
    
    end

    def begins_with_vowel?(word)
        ["a","e","o","u","i"].include?(word.chars[0].downcase)
    end
end


