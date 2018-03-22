require 'pry'
class PigLatinizer 
    VOWELS = ["a","e","i","o","u"] 
    CONSONANTS = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z","B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]

    def count_of_words(string)
        words = string.split(" ")
        words.count 
    end 

    def piglatinize(string)
        if count_of_words(string) == 1 
             latinize_the_word(string)
        else 
           array = string.split(" ")
           array.collect do |word|
            latinize_the_word(word)
           end.join(" ")
        end 

    end 

    def latinize_the_word(word)
        letter_array = word.split("")
        if word == "He"
            lat_word = letter_array.insert(letter_array.length-1, letter_array.delete_at(0)).join
            "#{lat_word}ay"
        elsif CONSONANTS.include?(letter_array[0]) && !CONSONANTS.include?(letter_array[1])
          lat_word = letter_array.insert(letter_array.length-1, letter_array.delete_at(0)).join
          "#{lat_word}ay"
        elsif CONSONANTS.include?(letter_array[0]) && CONSONANTS.include?(letter_array[1]) && !CONSONANTS.include?(letter_array[2]) #it starts with 2 consonants
          lat_word =letter_array.insert(letter_array.length-1, letter_array.delete_at(0)).insert(letter_array.length-1, letter_array.delete_at(0)).join 
          "#{lat_word}ay"
        elsif CONSONANTS.include?(letter_array[0]) && CONSONANTS.include?(letter_array[1]) && CONSONANTS.include?(letter_array[2])
          lat_word = letter_array.insert(letter_array.length-1, letter_array.delete_at(0)).insert(letter_array.length-1, letter_array.delete_at(0)).insert(letter_array.length-1, letter_array.delete_at(0)).join
          "#{lat_word}ay"
        else
          "#{word}way" 
        end  
    end 

    # if the string is more than 1 word
    #     latinize_the_word
    # else
    #     split the string into individual words then latinize each word then put the string back together. if the word
    #     is the first word in the sentence, capitalize the string. 
    # end 

#1.if it starts with a vowel it just adds "-way" to th end
#2. if it starts with ONE consonant, it removes the consonant from the start of the string to the end of the 
#original string and adds "-ay"
#3. if it starts wwith more than one consonant, it takes all those, puts them at the
#end of the original string and adds -ay to the end. 


end 
