class PigLatinizer

  def to_pig_latin(phrase)
    latin_words = phrase.split(" ").map {|w| piglatinize(w)}.join(" ")
  end

  def piglatinize(word)
    if ['a', 'e', 'i', 'o', 'u'].include?(word[0].downcase)
      word + 'way'
    else
      word.match(/[aeiou]\w*/)[0] + word.match(/^[^aeiou]+/)[0] + 'ay'
    end
  end

end
