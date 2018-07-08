class PigLatinizer

  def piglatinize(text)
    words = text_to_words(text)
    pig_words=[]
    words.each do |word|
      letters = word.split("")
      split_word = word.split(/(?=[aeiouAEIOU])/)
      if letters[0] == "a" ||
        letters[0] == "A" ||
        letters[0] == "e" ||
        letters[0] == "E" ||
        letters[0] == "i" ||
        letters[0] == "I" ||
        letters[0] == "o" ||
        letters[0] == "O" ||
        letters[0] == "u" ||
        letters[0] == "U"
        str = word + "way"
        pig_words << str
      else
        str = split_word.drop(1).join
        str += split_word[0]
        str += "ay"
        pig_words << str
      end
    end
    pig_words.join(" ")
  end

  def text_to_words(text)
    text.split(" ")
  end

end