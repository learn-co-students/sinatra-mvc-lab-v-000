class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    if vowels.include?(word[0])
      word + "way"
    else
      consonants = ""
      until vowels.include?(word[0])
        consonants += word[0]
        word[0] = ""
        word
      end
      word + consonants + "ay"
    end


  end

  def to_pig_latin(phrase)
    phrase.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
