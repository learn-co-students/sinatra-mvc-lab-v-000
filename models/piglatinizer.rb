class PigLatinizer

  def vowels
    ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
  end

  def piglatinize(words)
    piglatin = words.split("")
    return piglatin.join("") + "way" if piglatin.length == 1 || vowels.include?(piglatin[0])
    words.split("").each do |char|
      if vowels.include?(char)
        return piglatin.join("") + "ay"
      else
        piglatin.rotate!
      end
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end
end
