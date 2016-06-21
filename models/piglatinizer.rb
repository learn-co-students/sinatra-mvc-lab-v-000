require 'pry'
class PigLatinizer
    def piglatinize(word)
        vowels = ['a','e','i','o','u', 'A', 'E', 'I', 'O', 'U']
        if vowels.include?(word[0])
            word + "way"
        elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
            first = word.slice!(0)
            second = word.slice!(0)
            third = word.slice!(0)
            word << first
            word << second
            word << third
            word + "ay"                 
        elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
            first = word.slice!(0)
            second = word.slice!(0)
            word << first
            word << second
            word + "ay"                
        elsif !vowels.include?(word[0])
            first = word.slice!(0)
            word << first
            word + "ay"
        end            
    end
    
    def to_pig_latin(phrase)
       phrase = phrase.split(" ")
       phrase = phrase.map {|word| piglatinize(word) }
       phrase = phrase.join(" ")
    end
end

#PigLatinizer.new.piglatinize("please do something with this string")