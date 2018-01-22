class PigLatinizer

    def to_pig_latin(words)
        word_array = words.split(" ")
        word_array.map { |word| piglatinize(word) }.join(" ")
    end

    def piglatinize(word)
        letter_array = word.split("")
        first_vowel = letter_array.detect { | letter | !is_consonant?(letter) }
        @index = letter_array.index(first_vowel)
        if @index == 0
            word += "w"
        else
            (0..@index-1).each do |i|
                letter_array.push(word[i])
                letter_array.shift
            end
            word = letter_array.join
        end
        word += "ay"
    end


    def is_consonant?(letter)
        letter.scan(/[bcdfghjklmnpqrstvwxyz]/i).count == 1
    end
end