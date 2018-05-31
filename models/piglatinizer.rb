class PigLatinizer 

    def piglatinize(string)
        x = (string.split(" ").length == 1) ? piglatinize_word(string) : piglatinize_sentence(string)
        puts x 
        x
    end

    def consonant?(char)
        !char.match(/[aAeEiIoOuU]/)
    end
    
    def piglatinize_word(word)

        if !consonant?(word[0]) #if vowel
            word = word + 'w'
        elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
            word = word.slice(3..-1) + word.slice(0,3)
            #word = word[1..-1] + word[0] + 'ay'
        elsif consonant?(word[0]) && consonant?(word[1])
            word = word.slice(2..-1) + word.slice(0,2)
        else
            word = word.slice(1..-1) + word.slice(0) 
        end
        word << 'ay'
    end
     
    def piglatinize_sentence(sentence)
        sentence = sentence.split(" ")
        sentence.collect {|word| piglatinize_word(word)}.join(" ")
    end

end
        
        # vowel = %w(a e i o u)
        # consonant = %w(b c d f g h j k l m n p q r s t v w x y z)
        # word = word.split
        # if word[0].include?(vowel) # if vowel add way to end of word
        #     word[1..-1].join("") + 'way'
        # elsif word[0].include?(consonant) # if 1 consonant, add consonant and 'ay' to end of word
        #     word = word[1..-1] << word[0]
        #     word.join("") + 'ay'
        # end
        # word.downcase.split('')
        # if word[0].match(/[bcdfghjklmnpqrstvwxyz]/) && word[1..-1].match(/[aeiou]/)
        #     word = word[1..-1] << word[0]
        #     word.join("") + 'ay'
    

            
        # if world.match(/[bcdfghjklmnpqrstvwxyz]/) 
        #     new_word += 'ay' if word.match(/[aeoui]/)
        #     end
        # end       