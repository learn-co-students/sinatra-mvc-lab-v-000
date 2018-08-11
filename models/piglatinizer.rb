class PigLatinizer

    def starts_with_a_consonant
        words = text.split(" ")
        words.each do |word|
    
            if word ==~ /\A[^aeiou]/
                array = word.split("")
                arr1 = array.rotate.join
                arr2 = arr1 + "ay"
            end
        end
        arr2
        # if text ==~ /\A[^aeiou]/ || text ==~ /\A(?i:(?![aeiou])[a-z]){2}/
    end

    def starts_with_consonants

    end


end