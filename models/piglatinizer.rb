class PigLatinizer
    attr_reader :phrase

    def piglatinize(phrase)
        @phrase = phrase
        word_array = @phrase.split(" ")
        latin_phrase = word_array.map do |word| 
            first_vowel_index = word.downcase.index(/[aeiou]/)
            
            pig_word = word[first_vowel_index...word.length] + word[0...first_vowel_index]

            if word[0].downcase == "a" || word[0].downcase == "e" || word[0].downcase == "i" || word[0].downcase == "o" || word[0].downcase == "u"
                pig_word = pig_word + "way"
            else
                pig_word = pig_word + "ay"
            end
            
        end
        
        latin_phrase.join(" ")
    end
end