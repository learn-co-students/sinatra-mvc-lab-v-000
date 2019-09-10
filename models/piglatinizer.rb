class PigLatinizer

  @@vowels = 'aeiouAEIOU'

  def piglatinize(word)
    if @@vowels.include?(word.chars.first)
      return word + "way"
    else
      vowel = self.first_vowel(word)
      first_syl = word.split(vowel[0])[0]
      base = word.chars[first_syl.length..-1]
      base << first_syl << "ay"
      return base.join("")
    end
  end

  def first_vowel(word)
    word.chars.select{|el| @@vowels.include?(el)}
  end

  def to_pig_latin(phrase)
    phrase.split.collect {|el| self.piglatinize(el)}.join(" ")
  end

end
