class PigLatinizer

  def to_pig_latin(text)
    words = text.gsub(/[^\w\s]/, "").split
    words.collect!{ |word| piglatinize(word) }


    words.join(" ")
  end

  def piglatinize(word)
      first_vowel_index = word.index(/[aeiouAEIOU]/)
      word[first_vowel_index...word.length] + word[0...first_vowel_index] + "ay"
  end

end