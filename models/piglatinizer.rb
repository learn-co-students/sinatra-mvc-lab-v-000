class PigLatinizer
    attr_accessor :text

    def piglatinize(word)
        vowels = ['a', 'e', 'i', 'o', 'u']
        @input = word.split("")
        length = @input.count-1
        result = ""
        if vowels.include?(@input[0].downcase)
            result = word + "way"
        else
            @input.each_with_index do |char, i|
                if vowels.include?(char)
                    return result = @input[i..length].join + @input[0..(i-1)].join + "ay"
                end
            end
        end
        result
    end

    def to_pig_latin(user_text)
        text_array = user_text.split(" ")
        text_array.map { |word| self.piglatinize(word)}.join(" ")
    end
end
