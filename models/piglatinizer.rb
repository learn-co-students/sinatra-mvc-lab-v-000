class PigLatinizer

  def piglatinize(word)

    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    consonants = ""

    if vowels.include?(word[0])
      word + "way"
    else
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end
end