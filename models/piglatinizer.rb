class PigLatinizer
  def piglatinize(word)
    if word[0].match(/\b[aeiouAEIOU]/)
      word + "way"
    else
      first_vowel = word.index(/[aeiouAEIOU]/)
      word[first_vowel..99] + word[0..(first_vowel-1)] + "ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.collect! do |word|
      piglatinize(word)
    end
    words.join(' ')
  end

end
