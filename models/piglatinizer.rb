class PigLatinizer

  def piglatinize(word)
    if !!word.match(/\A[aeiou]/i)
      word += "way"
    else
      word = word.split("")
      while !word[0].match(/\A[aeiou]/i)
        char = word.shift
        word << char
      end
        word.join("") << "ay"
      end
    end

    def to_pig_latin(string)
      new_string = string.split(" ").collect do |word|
        piglatinize(word)
        end
        new_string.join(" ")
    end
end
