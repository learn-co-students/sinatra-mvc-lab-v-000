class PigLatinizer

  def piglatinize(word)
    vowels = ["A", "a", "e", "E", "i", "I", "o", "O", "U", "u"]
    if vowels.include?(word.split("")[0])
      word + "way"
    elsif vowels.include?(word.split("")[1])
      word.split("").rotate.join("") + "ay"
    else
      word.partition(/[AaEeIiOoUu]/).rotate.join("") + "ay"
    end
  end
end
