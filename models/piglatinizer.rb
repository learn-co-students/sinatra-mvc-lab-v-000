class PigLatinizer
    
    def piglatinize(entry)
        words = split_words(entry)
        latinized = words.collect { |word|
            vowels = get_beginning_vowels(word)

            if vowels == ""
                word + "way"
            else
                word.slice(vowels.length, word.length - 1) + vowels + "ay"
            end
        }
        latinized.join(" ")
    end
    
    def split_words(words)
        words.split(" ")
    end
    
    def get_beginning_vowels(word)
        word_arr = word.chars
        beginning_vowels = []
        word_arr.each { |l|
            letter = l.downcase
            if letter != "a" && letter != "e" && letter != "i" && letter != "o" && letter != "u"
                beginning_vowels << l
            else
                break
            end
        }
        beginning_vowels.join("")
    end
end