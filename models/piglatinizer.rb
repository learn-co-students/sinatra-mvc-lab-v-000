require 'pry'
class PigLatinizer 
    attr_accessor

    def piglatinize(word)
        if !word.split("")[0].match(/[aeiouAEIOU]/)
            split = word.split("")
               until split[0].match(/[aeiouAEIOU]/) do
                 split.rotate!
               end
            new_word = split.join << "ay"
            new_word
        else
            "#{word}way"
        end
    end

    def to_pig_latin(string)
        words = string.split(" ")
        pigged = words.map {|w| piglatinize(w)}
        s = pigged.join(" ")
        s
    end

end
