class PigLatinizer

  def piglatinize(word)
    if word.downcase.match(/^[aeiou]/)
      word + "way"
    else
      beginning = word.match(/^[^AEIOUaeiou]+/)
      num = beginning.to_s.length
      word[num..-1] + beginning.to_s + "ay"
    end
  end

  def to_pig_latin(sentence)
    array = sentence.split(" ")
    array.collect{|word| self.piglatinize(word)}.join(" ")
  end

end
