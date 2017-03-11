require'pry'
class PigLatinizer

    def to_pig_latin(phrase)
        phrase.split.collect do |word| 
            
            
            if word.downcase[0].match(/[aeiou]/)
                pig_word = word + "way"
            else
                vowel_delimited = word.split(/([aeiou]{1})/)
                pig_word = vowel_delimited[1..-1] << vowel_delimited[0] << "ay"
                pig_word = pig_word.join
            end

            pig_word
        end.join(" ")
    end

    def piglatinize(word)
        to_pig_latin(word).strip
    end

end