class PigLatinizer

  def piglatinize(word)
    if word[0].downcase =~ /\A[aeiou]/
      word + "way"
    else
      until word[0].downcase =~ /\A[aeiou]/
        word = word.split("").rotate.join
      end
      word + "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
