class PigLatinizer

  def piglatinize(word)
    if /[aeiouAEIOU]/.match(word[0]) != nil
      word + "way"
    else
      split_word = word.split(/([aeiou].*)/)
      split_word[1] + split_word[0] + "ay"
    end
  end

  def to_pig_latin(sentence)
    split_sentence = sentence.split(" ")
    new_phrase = ""
    split_sentence.each do |word|
      new_phrase << piglatinize(word) + " "
    end

    new_phrase.strip
  end

end
