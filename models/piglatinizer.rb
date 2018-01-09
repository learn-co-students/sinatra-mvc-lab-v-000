require 'pry'

class PigLatinizer

    attr_reader :words

    def initilialize(words)
        @words = word
    end

    def piglatinize(words) 
        last_chars = words.split(/^./).slice(1)
        first_char = words.split(//).shift
        plized = last_chars + first_char + "ay"
        plized
    end

end