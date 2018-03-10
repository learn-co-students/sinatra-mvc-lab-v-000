class PigLatinizer

  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/).nil?
      suffix = word.split(/[aeiouAEIOU]/)[0] + "ay"
      word[suffix.length - 2, word.length - suffix.length + 2] + suffix
    else
      word + "way"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.collect{ |word| self.piglatinize(word) }.join(" ")
  end

end
