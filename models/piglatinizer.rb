class PigLatinizer

  def piglatinize(word)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    letter_box = []

    if vowels.include?(word[0])
      return word + "way"
    else
      until vowels.include?(word[0])
        letter_box << word[0]
        word[0] = ""
      end
      word.split("")
      word = word +  letter_box.join("")
      return word + "ay"
    end
  end

  def to_pig_latin(sentence)
    pig_latin_arr = sentence.split(" ").map do |word|
      piglatinize(word)
    end
    pig_latin_arr.join(" ")
  end

end
