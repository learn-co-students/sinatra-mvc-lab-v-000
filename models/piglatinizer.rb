class PigLatinizer
  def piglatinize(word)
    if !start_with_vowel?(word)
      letters = word.chars

      first_consontants = letters.take_while do |char|
        !start_with_vowel?(char)
      end

      letters.shift(first_consontants.length)

      new_word = letters << first_consontants << "ay"
      new_word.join("")
    else
      word << "way"
    end
  end

  def to_pig_latin(text)
    words = text.split(" ")
    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

  private
  def start_with_vowel?(word)
    word.downcase.start_with?("a", "e", "i", "o", "u")
  end
end
