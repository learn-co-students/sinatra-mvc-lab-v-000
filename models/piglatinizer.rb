require 'pry'

class PigLatinizer

    def piglatinize(words) 
        if !words.include?(" ")
            if words.chr == "a" || words.chr == "e" || words.chr == "i" || words.chr == "o" || words.chr == "u" || words.chr == "A" || words.chr == "E" || words.chr == "I" || words.chr == "O" || words.chr == "U"
                words + "way" 
            elsif words.match(/^[^aAeEiIoOuU]{3}/)
                last_char_3 = words.split(/^.../).slice(1) 
                first_char_3 = words.split("")[0..2].join
                plized = last_char_3 + first_char_3 + "ay"
                plized
            elsif words.match(/^[^aeiou]{2}/)
                last_char_2 = words.split(/^../).slice(1) 
                first_char_2 = words.split("")[0..1].join
                plized = last_char_2 + first_char_2 + "ay"
                plized
            elsif words.match(/^[^aeiou]{1}/)
                last_char = words.split(/^./).slice(1) 
                first_char = words[0]
                plized = last_char + first_char + "ay"
                plized
            end
        else words.include?(" ")
            to_pig_latin
        end
    end

    def to_pig_latin(words)
        pl_ary = []
        words.split(" ").collect do |word| 
        if word.chr == "a" || word.chr == "e" || word.chr == "i" || word.chr == "o" || word.chr == "u" || word.chr == "A" || word.chr == "E" || word.chr == "I" || word.chr == "O" || word.chr == "U"
                word + "way"   
                fin_pl = word + "way"   
                pl_ary << fin_pl    
        elsif word.match(/^[^aAeEiIoOuU]{3}/)
                last_char_3 = word.split(/^.../).slice(1) 
                first_char_3 = word.split("")[0..2].join
                plized = last_char_3 + first_char_3 + "ay"
                pl_ary << plized
        elsif word.match(/^[^aeiou]{2}/)
                last_char_2 = word.split(/^../).slice(1) 
                first_char_2 = word.split("")[0..1].join
                plized = last_char_2 + first_char_2 + "ay"
                pl_ary << plized
        elsif word.match(/^[^aeiou]{1}/)
                last_char = word.split(/^./).slice(1) 
                first_char = word[0]
                plized = last_char + first_char + "ay"
                pl_ary << plized
            end
        end
        pl_ary.join(' ') 
    end
end