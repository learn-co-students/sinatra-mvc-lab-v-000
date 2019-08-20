class PigLatinizer

  def piglatinize(word)
    consonants = []
    if /^[AEIOUaeiou]/.match(word)
      consonants << "w"
    else
      while /^[^aeiou]/.match(word) do
        arr = word.split("")
        consonants << arr.shift
        word = arr.join("")
      end
    end

    cons_string = consonants.join
    word << cons_string
    word << "ay"

  end

  def to_pig_latin(phrase)
    phrase.split(" ").map { |word| piglatinize(word) }.join(" ")
  end

end
