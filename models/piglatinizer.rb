class PigLatinizer

   def piglatinize(word)
      ignore = ["in", "and", "an", "i", "a"]
      vowels = ["a","e","i","o","u"]

      if word.include?(".")
        word.gsub!(".", "")
      end
      if ignore.include?(word)
        word
      elsif
        vowels.include?(word[0])
          word + "ay"
      else
        char = word.chars
        until vowels.include?(char[0])
            char.rotate!
        end 
          char.join + "ay"
      end
    end


   def to_pig_latin(text)
      text.split.collect {|word| self.piglatinize(word)}.join(" ")
   end

end