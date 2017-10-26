class PigLatinizer
    
    def piglatinize(word)
        alphabet = ("a".."z").to_a # make array of alphabet
        vowels = %w[a e i o u] # make array of vowels
        consonants = alphabet - vowels
        if vowels.include?(word[0].downcase)
            word + "way"
        elsif consonants.include?(word[0].downcase) && consonants.include?(word[1]) && consonants.include?(word[2])
            word[3..-1] + word[0..2] + "ay"
        elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])
            word[2..-1] + word[0..1] + "ay"
        else consonants.include?(word[0].downcase) 
        word[1..-1] + word[0] + "ay"
        end 
    end

    def to_pig_latin(text)
        words = text.split(" ")
        arr = words.collect {|word| piglatinize(word)}
        arr.join(" ")
    end 
    
    
end