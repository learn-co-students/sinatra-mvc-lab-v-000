class PigLatinizer

  def vowel(x)
    if x == "a" || x == "e" || x == "i" || x == "o" || x == "u" || x == "A" || x == "E" || x == 'O' || x == 'I' || x == "U"
      return true
    else
      return false
    end
  end

  def piglatinize(sentence)
    array = sentence.split(' ')
    new_array = array.map do |text|
    if vowel(text[0]) == true
      text = text + 'way'
    elsif
      vowel(text[0]) == false && vowel(text[1]) == false && vowel(text[2]) == false
      first = text.slice!(0)
      second = text.slice!(0)
      third = text.slice!(0)
      text = text + first + second + third + "ay"
    elsif
      vowel(text[0]) == false && vowel(text[1]) == false
      first = text.slice!(0)
      second = text.slice!(0)
      text = text + first + second + "ay"
    else
      first = text.slice!(0)
      text = text + first + "ay"
    end
  end
  new_array.join(' ')
end







end
