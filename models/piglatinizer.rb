require "pry"
class PigLatinizer

  def vowel(letter)
    letter.match(/[aeiouAEIOU]/)
  end

  def first_letter(word)
    word.slice!(0)
  end

  def second_letter(word)
    word.slice!(0..1)
  end

  def third_letter(word)
    word.slice!(0..2)
  end

  def piglatinize_word(text) #to Pig-Latinize a single word
    @text = text
    if vowel(@text[0])
      "#{@text}way"
    elsif !vowel(@text[0]) && !vowel(@text[1]) && !vowel(@text[2])
      "#{@text}#{third_letter(text)}ay"
    elsif !vowel(@text[0]) && !vowel(@text[1])
      "#{@text}#{second_letter(text)}ay"
    elsif !vowel(@text[0])
      "#{@text}#{first_letter(text)}ay"
    end
end

def piglatinize_words(text) #to Pig-Latinize a phrase
    @text = text.split(" ")
    @text.collect do |word|
      piglatinize_word(word)
    end.join(" ") #creates string
  end

  def piglatinize(text)
    if text.split(" ").length == 1
      piglatinize_word(text)
    else
      piglatinize_words(text)
    end
  end
#  def piglatinize(text)
#    if text.split(" ").count ==1
#      piglatinize_word(text)
#    else
#      piglatinize_words(text)
#    end
#  end

end
