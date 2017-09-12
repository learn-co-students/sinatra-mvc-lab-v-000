class PigLatinizer

  def piglatinize(word)
    # vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    # first_letter = word.downcase

    if word.downcase.match(/\A[aeiou]/)
      word << "way"
    else
      consonants = word.slice(/^[^aeiou]*/)
      word_start = word.split(/^[^aeiou]*/).last
      word_start + consonants + "ay"
    end
  end

  def to_pig_latin(sentence)
    array = sentence.split(" ")
    array.map {|string| piglatinize(string)}.join(" ")
  end



end
