class PigLatinizer

  def piglatinize(word)
    if !word.scan(/^[aeiou]/i).empty?
      word << "way"
    else
      beginning = word.scan(/^[^aeiou]+/)[0]
      middle = word.scan(/[aeiou]+\w+/)[0]
      middle << beginning
      middle << "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split.map {|word| self.piglatinize(word)}.join(" ")
  end

end
