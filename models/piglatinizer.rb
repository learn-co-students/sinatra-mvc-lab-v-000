class PigLatinizer

  attr_accessor :text

  VOWELS = %w(a e i o u)
  CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(word)
    if VOWELS.include?(word.downcase[0])
      word + "way"
    elsif CONSONANTS.include?(word.downcase[0]) && CONSONANTS.include?(word.downcase[1]) && CONSONANTS.include?(word.downcase[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif CONSONANTS.include?(word.downcase[0]) && CONSONANTS.include?(word.downcase[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif CONSONANTS.include?(word.downcase[0])
      word[1..-1] + word[0] + 'ay'
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end
