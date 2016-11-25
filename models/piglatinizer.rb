class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if non_pig_latin_words.include?(word.downcase)
      word << "way"
    elsif vowels.include?(word[0].downcase)
      word << "way"
    else
      consonants = ""
      while !vowels.include?(word[0].downcase)
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
