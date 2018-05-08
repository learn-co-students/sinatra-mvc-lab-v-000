class PigLatinizer

  def check_vowel(letter)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include?(letter)
  end

  def piglatinize_word(text)
    if check_vowel(text[0].downcase)
      text << "way"
    elsif check_vowel(text[1].downcase)
      text = text.slice(1..-1) + text.slice(0) + "ay"
    elsif check_vowel(text[2].downcase)
      text = text.slice(2..-1) + text.slice(0..1) + "ay"
    elsif check_vowel(text[3].downcase)
      text = text.slice(3..-1) + text.slice(0..2) + "ay"
    end
    text
  end

  def piglatinize_sentence(text)
    text.split.map {|word| piglatinize_word(word)}.join(" ")
  end

  def piglatinize(text)
    text.split(" ").length == 1 ? piglatinize_word(text) : piglatinize_sentence(text)
  end

end
