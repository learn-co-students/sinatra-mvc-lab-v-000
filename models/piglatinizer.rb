class PigLatinizer
    attr_accessor :text

    def piglatinize(text)
        @text = text
        convert_words
    end

    private
    def convert_words
        words.collect do |word|
            convert(word)
        end.join(" ")
    end

    def convert(word)
        if starts_with_vowel?(word)
            return word.split("").push("way").join
        elsif cluster = get_consonant_cluster(word)

            array = word.split("").push(cluster + "ay")
            cluster.split("").length.times do
                array.shift
            end
            return array.join

        else
            return word.split("").push(word.split("").first + "ay").drop(1).join
        end
    end

    def starts_with_vowel?(word)
        !!word.match(/\A[aeiouyAEIOUY]/)
    end

    def get_consonant_cluster(word)
        if match = word.match(/\A[wbcdfghjklmnpqrstvxzWBCDFGHJKLMNPQRSTVXZ]+/)
            match[0]
        end
    end

    def words
        @text.split(" ")
    end
    
end