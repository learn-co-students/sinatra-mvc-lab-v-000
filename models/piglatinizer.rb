class PigLatinizer
    def piglatinize(input)
        input.split(" ").map{|word|piglatinize_word(word)}.join(" ")
    end

    def vowel?(letter)
        letter.match(/[aeiouAEIOU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aeiouAEIOU]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end

end