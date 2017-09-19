class PigLatinizer
    
    def piglatinize(word)
        # if the word starts with a vowel, add "ay"
        # if the word starts with a consonant, strip off 
        # the first letter and move to end, then add "ay"

        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        first_letters = ""

        if vowels.include?(word[0])
            word << "way"
        elsif vowels.include?(word[1])
            first_letters << word[0]
            word = word.split("")[1..-1].join
            word + first_letters + "ay"
        elsif vowels.include?(word[2])
            first_letters << word[0..1]
            word = word.split("")[2..-1].join
            word + first_letters + "ay"
        elsif vowels.include?(word[3])
            first_letters << word[0..2]
            word = word.split("")[3..-1].join
            word + first_letters + "ay"
        end
    end

    def to_pig_latin(string)
        string.split.collect{|word| piglatinize(word)}.join(" ")
    end
end
