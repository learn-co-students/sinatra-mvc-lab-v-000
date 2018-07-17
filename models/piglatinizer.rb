class PigLatinizer

    def piglatinize_word(word)
        piglatinized = ''
        if vowel?(word[0].downcase)
            piglatinized = word + "way"
        elsif !vowel?(word[0])
            consonant_s = []
            prefix_check = word[0,3]
            if vowel?(prefix_check[1])
                arrayified = word.split("")
                char_count = arrayified.detect {|char| arrayified.count(char) > 1}
                if !char_count.nil?
                    piglatinized = word[1..-1] + word[0] + "ay"
                else
                    piglatinized = word.gsub(word[0],"") + word[0] + "ay"
                end
            elsif !vowel?(prefix_check[1])
              prefix_check.each_char do |char|
                if !vowel?(char)
                  consonant_s << char
                end
              end
            piglatinized = word.gsub(consonant_s.join(""), "") + + consonant_s.join("") + "ay"
            end
        end
        piglatinized
      end
      
    def vowel?(char)
    "aeiouy".include?(char.downcase) ? true : false
    end

    def piglatinize(text)
        piglatinized = ""
        if text.split(" ").length == 1
            piglatinized = piglatinize_word(text)
        elsif text.split(" ").length > 1
            piglatinized_sentence = text.split(" ").map {|word| piglatinize_word(word)}
            piglatinized = piglatinized_sentence.join(" ")
        end
        piglatinized
    end

end