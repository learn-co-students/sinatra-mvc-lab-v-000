class PigLatinizer
  attr_accessor :phrase

  def piglatinize(word)
    letters = word.split("")
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    if vowels.include?(letters[0])
      w = letters << "way"
    elsif !vowels.include?(letters[0]) && vowels.include?(letters[1])
      w = letters.rotate << "ay"
    elsif !vowels.include?(letters[0..1]) && vowels.include?(letters[2])
      w = letters.rotate(2) << "ay"
    elsif !vowels.include?(letters[0..2]) && vowels.include?(letters[3])
      w = letters.rotate(3) << "ay"
    end
    w.join
  end

  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize(word)}.join(" ")
  end


end
