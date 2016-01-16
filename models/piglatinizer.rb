class PigLatinizer
  @@non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]

  def piglatinize(word)
    index = word.index(/[aeiou]/)
    if @@non_pig_latin_words.include?(word)
      word
    elsif index == 0
      word + "ay"
    else
      head = word[0..index - 1]
      tail = word[index..-1]
      tail + head + "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.delete(".").split(" ").map{|word| piglatinize(word)}.join(" ")
  end

end