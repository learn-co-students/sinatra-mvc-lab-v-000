class PigLatinizer
    

    def piglatinize(phrase)
        word_array = phrase.split(" ")
        word_array.map{|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word(word)

        punctuation = ""
        i = -1
        while i > word.length*-1 do
            if word[i].match?(/\W/)
                punctuation += word[i]
                i -= 1
            else
                break
            end
        end
        word = word.gsub(/\W/, "")

        if ["a", "e", "i", "o", "u"].include?(word[0].downcase)
            return word + "way" + punctuation
        else
            prefix = ""
            # cap = false
            # if word[0] != word[0].downcase
            #     cap = true
            #     word[0] = word[0].downcase
            # end
            word.each_char do |c|
                !["a", "e", "i", "o", "u"].include?(c.downcase) ? prefix += c : break
            end
            word= word[prefix.length..-1]
            # if cap
            #     word.capitalize!
            # end
            return word + prefix + "ay" + punctuation
        end
    end
end

# commented out code will handle capitalization, but fails tests