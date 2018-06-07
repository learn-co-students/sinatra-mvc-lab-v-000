class PigLatinizer

  #def initialize(text)
  #  @text = text.piglatinize
  #end

  def piglatinize(text)
    if text.split(" ").length == 1
      piglatinize_word(text)
    else
      piglatinize_words(text)
    end
  end


  def vowel(letter) #detects if first letter is a vowel
    letter.match(/[aeiouAEIOU]/)
  end

  def first_letter(word)
    word.slice!(0)
    #@words will then exclude the first letter
  end

  def second_letter(word)
    word.slice!(0..1)
  end

  def third_letter(word)
    word.slice!(0..2)
  end

  def piglatinize_word(text)
    @text = text
    if vowel(@text[0]) #if the first letter in 'text' starts with a vowel
      "#{@text}way"
    elsif !vowel(@text[0]) && !vowel(@text[1]) && !vowel(@text[2])
      "#{@text}#{third_letter(text)}ay"
    elsif !vowel(@text[0]) && !vowel(@text[1]) #if the first and second letters in text are consonants
      "#{@text}#{second_letter(text)}ay"
    elsif !vowel(@text[0]) #if only the first letter is a consonant
      "#{@text}#{first_letter(text)}ay"
    end
  end

  def piglatinize_words(text) #method to piglatinize phrase
    @text = text.split(" ") #creates array
    @text.collect do |word|
      piglatinize_word(word) #piglatinizes each word
    end.join(" ") #creates string
  end

end
