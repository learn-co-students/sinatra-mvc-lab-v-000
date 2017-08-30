class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    first_letter = word[0].downcase

    if vowels.include?(first_letter)
      word << "way"
    else
      consonants = word.slice(/^[^aeiou]*/)
      word_start = word.split(/^[^aeiou]*/).last
      word_start + consonants + "ay"
    end

  end

  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize(word)}.join(" ")
  end

end
