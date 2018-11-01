class PigLatinizer

    def piglatinize(i_string)
        result = piglatinize_word(i_string) || piglatinize_sentence(i_string)
        puts result
        result
    end

    def piglatinize_word(string)
        string = string.chars 
        string if string[0].match(/[aeiou]/)
        string.rotate.push("a","y").join if string[0].match(/[^aeiou]/)
    end

    def piglatinize_sentence(string_sentence)
        sentence.split.map {|word| 
        word if sentence[word].match(/[aeiou]/)
        if sentence[word].match(/[^aeiou]/)
            word.chars.rotate.push("a","y")
        end
    }
    end
end