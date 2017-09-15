class PigLatinizer
  def piglatinize(word)
    if self.first_letter_vowel?(word)
      pl_word = word + "way"
    else
      while !self.first_letter_vowel?(word)
        w = word.slice!(0)
        word = word + w
      end
      pl_word = word + "ay"
    end
    pl_word
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect {|word| self.piglatinize(word)}.join(" ")
  end

  def first_letter_vowel?(word)
    v = word.downcase.scan(/(?<=(\b[aeiou]))/)
    v != [] ? true : false
  end
end
