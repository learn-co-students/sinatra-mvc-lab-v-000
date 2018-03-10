class PigLatinizer
  attr_accessor :text, :word_array, :pig_latin_word, :pig_latin_array

  def to_pig_latin(text)
    @text = text
    @pig_latin_array = []
    @word_array = text.split(" ")

    @word_array.each do |word|
      @pig_latin_array << piglatinize(word)
    end

    pig_latin_text = @pig_latin_array.join(" ")
  end

  def piglatinize(word)
    word_starter_array = []
    word.split('').each do |letter|
      if letter.downcase != "a" && letter.downcase != "e" && letter.downcase != "i" && letter.downcase != "o" && letter.downcase != "u"
        word_starter_array << letter
      else
        break
      end
    end

    if word_starter_array == []
      word += "way"
    else
      word = word.split('').drop(word_starter_array.count).join + word_starter_array.join + "ay"
    end

  end

end
