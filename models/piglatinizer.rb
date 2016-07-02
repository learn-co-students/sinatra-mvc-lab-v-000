class PigLatinizer
 attr_accessor :word

  def initialize
  end

  def piglatinize(word)
    alpha = ("a"..."z").to_a
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    cons = alpha - vowels
    if vowels.include?(word[0])
      word<<"way"
    end
    word
  end

end
