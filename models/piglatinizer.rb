class PigLatinizer
    def piglatinize(word)
      if !word.split("")[0].match(/[aeiouAEIOU]/)
        word_split = word.split("")
        until word_split[0].match(/[aeiouAEIOU]/) do
          word_split.rotate!
        end
        new_word = word_split.join << "ay"
        new_word
      else
        return "#{word}way"
      end
    end

    def to_pig_latin(string)
      words_array = string.split(" ")
      pig_words_array = words_array.map {|word| piglatinize(word)}
      new_string = pig_words_array.join(" ")
      new_string
    end
end
