class PigLatinizer

  def controller(user_phrase)
    if user_phrase.split(" ").size == 1
      piglatinize(user_phrase)
    else
      to_pig_latin(user_phrase)
    end
  end

  def piglatinize(user_phrase)
    if user_phrase[0].downcase.scan(/[aeiou]/).size > 0
      user_phrase + "way"
    else
      first = user_phrase.scan(/^[bcdfghjklmnpqrstvwxyz]+/)[0]
      rest = user_phrase[first.size..-1]
      rest + first + "ay"
    end
  end

  def to_pig_latin(user_phrase)
    phrase = user_phrase.split(" ")
    phrase.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
