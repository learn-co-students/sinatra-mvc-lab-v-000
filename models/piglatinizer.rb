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

end
