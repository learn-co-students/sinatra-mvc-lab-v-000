class PigLatinizer

    def piglatinize(word)
      string = ''
      vowels = ["a", "e", "i", "o", "u"]
      if vowels.include?(word[0].downcase)
        word + "way"
      else
        word.chars.each do |char|
        if vowels.include?(char)
          return word[string.length..-1] + string + "ay"
        else
          string = string + char
        end
      end
    end
  end

      def to_pig_latin(string)
        string.split.collect{|word| piglatinize(word)}.join(" ")
      end
end
