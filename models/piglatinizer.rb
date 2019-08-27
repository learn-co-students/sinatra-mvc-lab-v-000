class PigLatinizer

  def to_pig_latin(text)
    words_array = text.split(" ")
    pig_words_array = words_array.map do |word|
      piglatinize(word)
    end
    pig_words = pig_words_array.join(" ")
  end

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    letters = word.split("")
    x = letters.size - 1

    if vowels.include?(letters[0]) == true
      pig_word = letters.join("") << "way"
    else
      while vowels.include?(letters[0]) == false do
        letters.insert(x, letters.delete_at(0))
      end
      pig_word = letters.join("") << "ay"
    end
  end

end
