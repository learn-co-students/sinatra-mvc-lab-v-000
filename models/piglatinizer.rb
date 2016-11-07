class PigLatinizer
  def first_vowel_index(word)
    word.index(/[aeiouAEIOU]/)
  end

  def piglatinize(word)
    index = first_vowel_index(word)
    if !index || index == 0
      word += "way"
    else
      word[index..-1] + word[0..(index-1)] + "ay"
    end
  end

  def to_pig_latin(sentence)
    latin_words = []
    sentence.split(" ").each do |word|
      latin_words << piglatinize(word)
    end
    latin_words.join(" ")
  end

end
