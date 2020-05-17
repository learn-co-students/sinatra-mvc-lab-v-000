class PigLatinizer

    def initialize
    end

    def piglatinize(text)
        words = text.split(" ")
        new_sentence = []
        for word in words
            first_vowel = word.downcase.index(/[aeiou]/)
            if first_vowel > 0
                len = word.length
                new_sentence << word[first_vowel..len-1] + word[0..first_vowel-1] + "ay"
            else
                new_sentence << word + "way"
            end
        end
        new_sentence.join(" ")
    end

end