class PigLatinizer
    
    # def initialize
        
    # end
    
    def piglatinize(word)
        if word.scan(/\A[aeiouAEIOU]/)[0] == word[0]
            word << 'way'
            word.strip
        else
            first_vowel = word.index(word.scan(/[aeiou]/)[0])
            first_letters = word.slice!(0, first_vowel)
            word << first_letters << 'ay'
        end
    end
    
    def to_pig_latin(sentence)
        word_array = sentence.split(' ')
        word_array.collect do |word|
            piglatinize(word)
        end
        word_array.join(" ")
    end
    
    
end