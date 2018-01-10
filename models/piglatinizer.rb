require 'pry'

class PigLatinizer

    attr_reader :words

    def initilialize(words)
        @words = word
    end

    def piglatinize(words) 
        # binding.pry
       if words.downcase.chr == "a" || words.downcase.chr == "e" || words.downcase.chr == "i" || words.downcase.chr == "o" || words.downcase.chr == "u"
            words + "way"      
        elsif words.match(/^[^aAeEiIoOuU]{3}/)
            last_char_3 = words.downcase.split(/^.../).slice(1) 
            first_char_3 = words.downcase.split("")[0..2].join
            plized = last_char_3 + first_char_3 + "ay"
            plized
        elsif words.match(/^[^aeiou]{2}/)
            last_char_2 = words.downcase.split(/^../).slice(1) 
            first_char_2 = words.downcase.split("")[0..1].join
            plized = last_char_2 + first_char_2 + "ay"
            plized
        elsif words.match(/^[^aeiou]{1}/)
            last_char = words.downcase.split(/^./).slice(1) 
            first_char = words.downcase[0]
            plized = last_char + first_char + "ay"
            plized

       
            # binding.pry
            
        # elsif !words.downcase.chr == "a" || !words.downcase.chr == "e" || !words.downcase.chr == "i" || !words.downcase.chr == "o" || !words.downcase.chr == "u" && !words[1] == "a" || !words[1] == "e" || !words[1] == "i" || !words[1] == "o" || !words[1] == "u" 
        #     last_chars = words.downcase.split(/^./).slice(1) 
        #     first_char = words.downcase.split(//)[0..1].join("")
        #     plized = last_chars + first_char + "ay"
        #     plized
        # else
        #     last_chars = words.downcase.split(/^./).slice(1) 
        #     first_char = words.downcase.split(//)[0]
        #     plized = last_chars + first_char + "ay"
        #     plized
        end
    end

end