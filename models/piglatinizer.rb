class PigLatinizer
    

    def piglatinize(text)
        self.to_pig_latin(text)
    end

    def to_pig_latin(text)
        text_array = text.split
    
        text_array.collect do |word|
                index_first_vowel = word.index(/[AaEeIiOoUu]/)
                if index_first_vowel == 0
                    word << "way"
                else 
                    i = 0
                    str_to_add = ""

                    while i < index_first_vowel
                        str_to_add = str_to_add + word[i]
                        i += 1
                    end

                    word[index_first_vowel..(word.size - 1)] << str_to_add << "ay"
                end
                
        end.join(" ")
    end
end