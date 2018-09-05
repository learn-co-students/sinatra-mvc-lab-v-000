class PigLatinizer

    def piglatinize(text)
      words = text.split(" ")
      words.collect do |word|
        letters = word.split(/([aeouiAEOUI].*)/)
        if letters[0] == ""
            letters << "way"
        else 
            first = letters[1]
            last = letters[0]
            letters = [first, last]
            letters << "ay"
        end
        letters.join
      end.join(" ")
    end
end