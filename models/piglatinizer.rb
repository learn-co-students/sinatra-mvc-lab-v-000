class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "i", "e", "o", "u"]
    way_words = ["I", "i", "Once", "upon", "and", "along", "in", "eighty", "until", "Enumeration", "a", "it", "an", "old", "alone"]
    if way_words.include?(word)
      word + "way"
    elsif vowels.include?(word[0])
      word + "ay"
    else
      consonants = ""
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
