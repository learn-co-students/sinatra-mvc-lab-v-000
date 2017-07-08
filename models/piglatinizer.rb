class PigLatinizer

  def to_pig_latin(phrase)
    phrase.split.collect do |word|
      piglatinize(word)
    end.join(" ")

  end

  def piglatinize(word)
    if starts_with_vowel?(word)
      tack_way_onto(word)
    else
      flip_and_tack_ay_onto(word)
    end
  end



  def starts_with_vowel?(word)
    word.scan(/\A[AaEeIiOoUu]/).any?
  end

  def flip_and_tack_ay_onto(word)
    word.scan(/\A[^AaEeIiOoUu]+(.*)/)[0][0] +
    word.scan(/\A[^AaEeIiOoUu]+/)[0] + "ay"
  end

  def tack_way_onto(word)
    word + "way"
  end

end
