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

  def to_pig_latin(text)
    sentence = text.split.collect {|word| piglatinize(word)}
    sentence.join(" ")
  end

end
