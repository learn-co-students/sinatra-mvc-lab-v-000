class PigLatinizer
  def piglatinize(word)
    if /^[aeiou]/i =~ word
      word + "way"
    else
      consonants = /^[^aeiou]*/.match(word)[0]
      word[consonants.length..-1] + consonants + "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split.map { |word| piglatinize(word) }.join(" ")
  end
end