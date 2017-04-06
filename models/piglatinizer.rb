class PigLatinizer

  def piglatinize(word)
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    letters = word.split("")

    if vowels.include?(letters[0])
      new = letters << ["w", "a", "y"]
      new.join

    elsif consonants.include?(letters[0]) && vowels.include?(letters[1])
      new = letters.rotate
      new << ["a", "y"]
      new.join

    elsif consonants.include?(letters[0]) && consonants.include?(letters[1]) && consonants.include?(letters[2])
      new = letters.rotate(3)
      new << ["a", "y"]
      new.join

    elsif consonants.include?(letters[0]) && consonants.include?(letters[1])
      new = letters.rotate(2)
      new << ["a", "y"]
      new.join
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split
    pl = words.collect{|word| piglatinize(word)}
    pl.join(" ")
  end

end
