class PigLatinizer

  def piglatinize(word)
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    if consonants.include?(word[0])
      if consonants.include?(word[1]) && consonants.include?(word[2])
        word[3..-1] << word[0..2] + "ay"
      elsif consonants.include?(word[1])
        word[2..-1] << word[0..1] + "ay"
      else
        word[1..-1] << word[0] + "ay"
      end
    elsif vowels.include?(word[0])
      word << "way"
    end
  end

  def to_pig_latin(string)
    split_string = string.split(" ")
    split_string.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
