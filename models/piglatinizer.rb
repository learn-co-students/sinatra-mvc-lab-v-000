class PigLatinizer

  def piglatinize(word)
    if word.downcase.start_with?("a", "e", "i", "o", "u") || word.length == 1
      word.insert(-1, "way")
    else
      new_word = word.partition(/[aeiou]/).rotate << "ay"
      new_word.join
    end
  end

  def to_pig_latin(sentence)
    sentence.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
