class PigLatinizer

  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
      word + "way"
    else
      split_word = word.split(/([aeiou].*)/)
      split_word[1] + split_word[0] + "ay"
    end
  end

  def to_pig_latin(words)
    words.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
