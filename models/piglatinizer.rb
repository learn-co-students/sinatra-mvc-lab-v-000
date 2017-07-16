require 'pry'

class PigLatinizer
    attr_accessor :text


    def to_pig_latin(text)
        array = text.split
        piglatinized_array = []
        array.each do |word|
            piglatinized_array << self.piglatinize(word)
        end
        string = piglatinized_array.join(" ")
    end

    def piglatinize(word)
        m = word.match(/(\w*?)([AEIOUaeiou]\w*)/)
        if m[1] == ""
            string = m[2] + "way"
        else
            string = m[2] + m[1] + "ay"
        end
        string

    end

end