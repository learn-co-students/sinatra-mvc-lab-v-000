class PigLatinizer
  def piglatinize(word)
    first_letter = word[0].downcase
    result = ""
    if vowel?(first_letter)
      result = word + "way"
    else
      index = first_vowel_index(word.downcase)
      result = word[index..-1] + word[0..(index-1)] + "ay"
    end
  end

  def to_pig_latin(text)
    text.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

  def vowel?(char)
    if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
      return true
    else
      return false
    end
  end

  def first_vowel_index(word)
    word.split(//).each_with_index do |letter, i|
      if vowel?(letter)
        return i
      end
    end
  end
end
