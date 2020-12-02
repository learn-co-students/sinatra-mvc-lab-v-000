class PigLatinizer

  def piglatinize(word)
    first_letters = word.scan(/^[bcdfghjklmnpqrstvwxyz]+/i).first

    if word =~ /^[aeiou]/i
      translated_word = "#{word}way"
    else
      translated_word = "#{word.split(/^#{first_letters}/).last}#{first_letters}ay"
    end
    translated_word
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end
