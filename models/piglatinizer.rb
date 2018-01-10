require 'pry'

class PigLatinizer

    attr_reader :words

    def initilialize(words)
        @words = word
    end

    def piglatinize(words) 
        # binding.pry
        if words.include?("")
            words.split("").each do |word| 
            if word.downcase.chr == "a" || word.downcase.chr == "e" || word.downcase.chr == "i" || word.downcase.chr == "o" || word.downcase.chr == "u"
                    word + "way"      
            elsif word.match(/^[^aAeEiIoOuU]{3}/)
                    last_char_3 = word.downcase.split(/^.../).slice(1) 
                    first_char_3 = word.downcase.split("")[0..2].join
                    plized = last_char_3 + first_char_3 + "ay"
                    plized
            elsif word.match(/^[^aeiou]{2}/)
                    last_char_2 = word.downcase.split(/^../).slice(1) 
                    first_char_2 = word.downcase.split("")[0..1].join
                    plized = last_char_2 + first_char_2 + "ay"
                    plized
            elsif word.match(/^[^aeiou]{1}/)
                    last_char = word.downcase.split(/^./).slice(1) 
                    first_char = word.downcase[0]
                    plized = last_char + first_char + "ay"
                    plized
            end
        else
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
        end
    end
end