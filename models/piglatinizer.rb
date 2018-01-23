class PigLatinizer
  attr_reader :string

  def initialize(string = nil)
    @string = string
  end

  def piglatinize(word)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    downcase_word = word.downcase

    if vowels.include?(downcase_word[0])
      word + 'way'
    elsif consonants.include?(downcase_word[0]) && consonants.include?(downcase_word[1]) && consonants.include?(downcase_word[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(downcase_word[0]) && consonants.include?(downcase_word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(downcase_word[0])
      word[1..-1] + word[0] + 'ay'
    else
      downcase_word # return unchanged
    end
  end

  def to_pig_latin(sentence)
    split_phrase = sentence.split
    piglatin_array = []

    split_phrase.each do |word|
      piglatin_array << piglatinize(word)
    end

    piglatin_array.join(" ")
  end

end
