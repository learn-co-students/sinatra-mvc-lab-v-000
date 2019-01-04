class Piglatinizer

  def piglatinize(input)
    if input.split(" ").length == 1
      piglatinizer_word(input)
    else
      piglatinizer_phrase(input)
    end
  end

  def consonant?(text)
    !text.match(/[aAeEiIoOuU]/)
  end

  def piglatinizer_word(text)
    if !consonant?(text[0])
      text = text + "w"
    elsif consonant?(text[0]) && consonant?(text[1]) && consonant?(text[2])
      text = text.slice(3..-1) + text.slice(0,3)
    elsif consonant?(text[0]) && consonant?(text[1])
      text = text.slice(2..-1) + text.slice(0,2)
    else
      text = text.slice(1..-1) + text.slice(0)
    end
    text << "ay"
  end

  def piglatinizer_phrase(phrase)
    phrase.split.collect { |text| piglatinizer_word(text) }.join(" ")
  end
end
