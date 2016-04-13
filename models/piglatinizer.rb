class PigLatinizer

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect! do |x|
      piglatinize(x)
    end
    words.join(" ")
  end

  def piglatinize(word)
    if word[0].match(/\b[aeiouAEIOU]/)
      word + "way"
    else
      vowel = word.index(/[aeiouAEIOU]/)
      word[vowel..99] + word[0..(vowel-1)] + "ay"
    end
  end


end
