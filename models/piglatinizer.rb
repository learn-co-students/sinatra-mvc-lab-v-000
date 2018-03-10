class PigLatinizer
  attr_accessor :new_sentence

  def initialize(new_sentence = [])
    @new_sentence = new_sentence
  end

  def to_pig_latin(text)
    text_array = text.split(" ")
    text_array.each do |word|
      piglatinize(word)
    end
    @new_sentence.join(" ")
  end

  def piglatinize(word)
    word_array = word.scan /\w/
    if word_array[0].scan(/[aeouiAEIOU]/).count != 0
      word_array << "way"
      new_word = word_array.join("")
      @new_sentence << new_word
    else
      first_vowel = word[/[aeiou]/]
      first_vowel_index = word_array.index(first_vowel)
      ending = word_array.shift(first_vowel_index)
      word_array << ending
      word_array << "ay"
      new_word = word_array.flatten.join("")
      @new_sentence << new_word
    end
    new_word
  end

end