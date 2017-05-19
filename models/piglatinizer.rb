class PigLatinizer

  def piglatinize(word)
    if word.match(/^[aeiou]/i)
      "#{word}way"
    else
      index = word =~ /[aeiou]/
      letters = word.split("")
      first_letter = letters.shift(index).join
      "#{letters.join}#{first_letter}ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
