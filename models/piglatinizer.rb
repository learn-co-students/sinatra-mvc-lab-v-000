require 'pry'
class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        arr = text.split(' ')
        arr.map do |word|
            if word.match(/\b[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
                new_word = word.split(/([aeiouAEIOU].*)/)
                new_word[0], new_word[1] = new_word[1], new_word[0]
                pl = new_word.join("") << "ay"
                pl.gsub(/\W/, '')
            elsif word.match(/\b[aeouiAEIOU]/)
                word << "way"
                word.gsub(/\W/, '')
            end
        end.join(" ")
    end
    
end