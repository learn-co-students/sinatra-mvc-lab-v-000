class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def to_pig_latin(words)
    split_words = words.split(" ")
    pigged_words = split_words.collect{|word|piglatinize(word)}
    pigged_words.join(" ")
  end

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    letters = word.split("")
    i = letters.index{|letter|vowels.include?(letter.downcase)}
    rotated = letters.rotate(i)
    vowels.include?(letters[0].downcase) ? rotated << "way" : rotated << "ay"
    rotated.join("")
  end
  # vowels = ["a", "e", "i", "o", "u"]
  # letters = word.split("")
  #   if vowels.include?(letters[0].downcase)
  #     letters << "way"
  #   elsif !vowels.include?(letters[0]) && !vowels.include?(letters[1]) && !vowels.include?(letters[2]) && vowels.include?(letters[3])
  #     letters = letters.rotate(3)
  #     letters << "ay"
  #   elsif !vowels.include?(letters[0]) && !vowels.include?(letters[1]) && vowels.include?(letters[2])
  #     letters = letters.rotate(2)
  #     letters << "ay"
  #   elsif !vowels.include?(letters[0]) && vowels.include?(letters[1])
  #     letters = letters.rotate(1)
  #     letters << "ay"
  #   end
  #   word = letters.join("")
  #   word
  # end

end
