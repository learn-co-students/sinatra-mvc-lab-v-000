class PigLatinizer
    
    def splitter(words)
        split_sentence = words.split
        
        words = split_sentence.map do |word| 

          if word[0,1].match(/[aeouiAEOUI]/)
             new_word = word << "way"

          else split_word = word.split /([aeiou].*)/
          first_part_of_word = split_word[0]
          second_part_of_word = split_word[1]
          flipped_word = split_word[1] + split_word[0] + "ay"
             
          end
        end
          words.join(" ")
      
      end 
      
    def piglatinize(words)
        wordcount = words.split.count

        if wordcount == 1 && words[0,1].match(/[aeouiAEOUI]/)
            new_word = words << "way"
            return new_word
        elsif
            wordcount == 1 && !words[0,1].match(/[aeouiAEOUI]/)
            split_word = words.split /([aeiou].*)/
            first_part_of_word = split_word[0]
            second_part_of_word = split_word[1]
            flipped_word = split_word[1] + split_word[0] + "ay"
            return flipped_word
        else
          splitter(words)
        end

    end    

end

#pseudo
# def piglatinize
    #     # if words is one word,
    #     #     check the first word to see if it's vowel. 
    #     #     first_word = words[0,1]
    #     #       if the first word is a vowel, add "way" at the end
    #     #       else search until vowel, take first consonants and put them at the end, then add "ay"

    
    #     #     piglatinize
    #     # else
    #     #     word.split_word
    #     #     iterate over then piglatinize
    #     # end
    # end 
