class PigLatinizer 
  
    def piglatinize(input)
    if input.split(" ").length == 1
      piglatinize_input(input)
    else
      piglatinize_phrase(input)
    end
  end

  def piglatinize_input(text)
    if vowel?(text[0])
      text = text + "w"
    elsif !vowel?(text[0]) && !vowel?(text[1]) && !vowel?(text[2])
      text = text.slice(3..-1) + text.slice(0,3)
    elsif !vowel?(text[0]) && !vowel?(text[1])
      text = text.slice(2..-1) + text.slice(0,2)
    else
      text = text.slice(1..-1) + text.slice(0)
    end
    text << "ay"
  end

  
  def vowel?(letter)
    letter.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_phrase(string)
    string.split.collect { |word| piglatinize_input(word) }.join(" ")
  end
end