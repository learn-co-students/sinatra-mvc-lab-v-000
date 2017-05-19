class PigLatinizer

  def to_pig_latin(phrase)
    phrase.split.collect {|word| self.piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    if slug = word.scan(/^[^aeiou]{1,}/i).first
      word.sub(slug, "") + slug + "ay"
    else
      word + "way"
    end
  end
end
