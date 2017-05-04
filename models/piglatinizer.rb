class PigLatinizer


  def to_pig_latin(text)
    text.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end

  def piglatinize (word)
    pos = word.index(/[aeiouAEIOU]/) #find position of first vowel
    if pos == 0 || pos == nil #if first char is a vowel or vowel is not found at all
      begin_vowel(word)
    else #if first char is not vowel
      begin_c(word, pos)
    end
  end

  def begin_vowel (word)
    word << "way"
  end

  def begin_c (word, pos)
    word[pos..word.size]<<word[0..pos-1]<<"ay"
  end

end
