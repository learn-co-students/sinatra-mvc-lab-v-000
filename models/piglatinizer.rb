class PigLatinizer

  def to_pig_latin(string)
    words = string.split(" ")
    words.collect {|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    if vowels.include?(word[0])
      word << "way"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end
end
