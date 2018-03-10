class PigLatinizer

  def piglatinize(text)
    if text.length == 1
      word = text + "way"
    elsif
    first_vowel = text.index(/[aeiouAEIOU]/)
    new_word = (text[first_vowel..text.length] + text[0...first_vowel])
      if ["a", "e", "i", "o", "u"].include?(text[0].downcase)
        word = new_word + "way"
      else
        word = new_word + "ay"
      end
    end
    word
  end

  def to_pig_latin(sentence)
    sentence.split.map { |word| piglatinize(word) }.join(" ")
  end

end
