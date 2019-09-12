require 'pry'
class PigLatinizer

  def initialize

  end

  def piglatinize(word)
    vowel = word[0].downcase.scan(/[aeoui]/).count

    if vowel == 1
      word = "#{word}way"
    else
      pos_vowel = word.index(/[aeiouy]/)
      word = "#{word[pos_vowel..-1]}#{word[0..(pos_vowel-1)]}ay"
    end

    word
  end

  def to_pig_latin(phrase)

    phrase.split(" ").map { |word| piglatinize(word) }.join(" ")

  end

end
