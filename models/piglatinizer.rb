
class PigLatinizer

    def piglatinize(user_input)
        @words = user_input.to_s.split(" ") 
       
        piglatin = @words.collect do |word| 

            if word.downcase.match(/^[aeiou]/) 
                word.insert(-1, 'way') 
            elsif word.downcase.match(/^[^aeiou]/)  
                @letters = word.split("") 
                until vowel?(@letters[0]) 
                    @letters << @letters.shift 
                end
                @letters << 'ay'  
                @letters.join("") 
            end 
        end
         piglatin.join(" ")
    end

    def vowel?(letter)
        letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
    end
end