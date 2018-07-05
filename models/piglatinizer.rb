class PigLatinizer
  
  def piglatinize(text)
    piglatin = ''
    
    if text.split(" ").length == 1
      piglatin = piglatinize_word(text)
    else
      piglatin = piglatinize_sentence(text)
    end
    piglatin
  end
  
  def consonant?(text)
    !text.match(/[aAeEiIoOuU]/)
  end
  
  def piglatinize_word(text)
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
  
  def piglatinize_sentence(text)
    text.split.collect { |word| piglatinize_word(word) }.join(" ")
  end
  
end