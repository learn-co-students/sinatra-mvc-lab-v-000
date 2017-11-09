class PigLatinize

  def piglatinize(word)
    vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
    rest_of_word = []

    if vowels.include?(word[0])
      word << "ay"
    else
      while !vowels.include?(word[0])
        rest_of_word << word.slice![0]
      end
      word + rest_of_word + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
