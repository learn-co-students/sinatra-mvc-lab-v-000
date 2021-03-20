
class PigLatinizer

    def piglatinize(user_phrase)
        result = user_phrase.split(" ").length == 1 ? pig_latinize(user_phrase) : pig_latinize_string(user_phrase)
    end    


    def pig_latinize(word)
        if word.match(/\A[aeiouAEIOU]{1}/) != nil 
            new_word = "#{word + "way"}"
        elsif word[0].match(/\A(?i:(?![aeiou])[a-z]){1}/) != nil && word[1].match(/[aeiou]/) != nil
           first_letter = word.slice!(0)
           new_word = "#{word + first_letter + "ay"}"
        elsif word.match(/\A(?i:(?![aeiou])[a-z]){3}/) != nil 
            three_letters = word.slice!(0,3)
            new_word = "#{word + three_letters + "ay"}"  
        elsif word.match(/\A(?i:(?![aeiou])[a-z]){2}/) != nil 
            two_letters = word.slice!(0,2)
            new_word = "#{word + two_letters + "ay"}"
        end
        new_word
    end

    def pig_latinize_string(sentence)
        sentence.split.collect do |word|
          pig_latinize(word)
        end.join(" ")
    end

            #CONDITION 1
            #if word starts with vowel, add "way" at end of word
            #CONDITION 2
            #if 2 letters of word start with consonant and vowel, 
            #put first letter at the end of word plus "ay"
            #CONDITION 3
            #if word starts with two consonants, move two letters to end, 
            #add "ay"
       
end
