class PigLatinizer

  def piglatinize(word)
    piglatin = word.split("")
    if vowel?(piglatin[0])
      piglatin << "way"
    else 
      until vowel?(piglatin[0]) do 
        piglatin.push(piglatin.shift)
      end
      piglatin << "ay"
    end
    piglatin.join
  end

  def vowel?(word)
    vowels = "aeiouAEIOU"
    vowels.include?(word[0])
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map { |word| piglatinize(word) }.join(" ")
  end
end