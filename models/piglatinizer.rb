class PigLatinizer

  attr_reader :text

  def piglatinize(text)
    if text.include?(" ")
      piglatin_sentence(text)

    elsif vowel?(text[0])
      "#{text}way"

    elsif vowel?(text[1])
      "#{text[1..-1]}#{text[0]}ay"
    elsif
      !vowel?(text[1]) && vowel?(text[2])
      "#{text[2..-1]}#{text[0]}#{text[1]}ay"
    elsif
      !vowel?(text[1]) && !vowel?(text[2])
      "#{text[3..-1]}#{text[0]}#{text[1]}#{text[2]}ay"
    end
  end

  def piglatin_sentence(text)
    text.split.map {|word| piglatinize(word)}.join(" ")
  end

  def vowel?(letter)
    letter.match(/[aeiouAEIOU]/)
  end

end
