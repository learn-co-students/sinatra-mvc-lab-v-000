require 'pry'

class PigLatinizer

    VOWELS = ['a','e','i','o','u']

    def initialize

    end

    def to_pig_latin(phrase)
        words = phrase.split

        words.collect do |word|
            piglatinize(word)
        end.join(" ")
    end

    def piglatinize(word)
        p = ""
        if VOWELS.include?(word[0].downcase)
            p = word + "way"
        else
            # If first letter is consonant
            first_cluster = ""

            while !VOWELS.include?(word[0])
                first_cluster << word[0]
                word[0] = ''
            end

            p = word + first_cluster + "ay"
        end
        p   #return value
    end

end