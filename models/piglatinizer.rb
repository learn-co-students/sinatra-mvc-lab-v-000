class PigLatinizer

  def piglatinize(word)
    if word.match(/^[aeiou]/i)
      "#{word}way"
    else
      index = word =~ /[aeiou]/
      word_array = word.split("")
      letters = word_array.shift(index).join
      "#{word_array.join}#{letters}ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").collect{|word| self.piglatinize(word)}.join(" ")
  end

end
