class PigLatinizer

  def to_pig_latin(phrase)
    phrase.split.collect {|word| self.piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    if slug = word.scan(/^[^AEIOUaeiou]{1,}/).first
      word.gsub(slug, "") + slug + "ay"
    else
      word + "way"
    end
  end
end
