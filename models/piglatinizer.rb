class PigLatinizer

  def piglatinize(word)

    if consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0) + word.slice(1) + word.slice(2) + "ay"

    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0) + word.slice(1) + "ay"

    elsif consonant?(word[0])
      word = word.slice(1..-1) + word.slice(0) + "ay"

      else
        word = word + "way"
      end
  end

  def to_pig_latin(sentence)
    sentence.split.collect{|word|piglatinize(word)}.join(" ")
  end

  def consonant?(letter)
    !letter.match(/[aAeEiIoOuU]/)
  end

end
