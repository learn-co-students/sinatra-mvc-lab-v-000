class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    non_pig_latin_words = ["I", "A", "i", "me", "to", "too", "a", "an", "in", "and", "on"]

    if non_pig_latin_words.include?(word)
      word = word + "way"
    elsif vowels.include?(word[0])
      word = word + "way"
    else
      !vowels.include?(word[0])
      words = word.partition(/[aeiou]/)
      word = words[1..(words.size)].join + words[0] + "ay"
    end

  end

  def to_pig_latin(strings)
    strings.split.collect {|word| piglatinize(word)}.join(" ")
  end

end
