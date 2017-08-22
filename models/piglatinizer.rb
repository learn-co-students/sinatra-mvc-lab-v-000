class PigLatinizer
  attr_reader :text

  def piglatinize(word)
    word_in_small_letters = word.downcase
    vowels = %W(a e i o u)

    if vowels.include?(word_in_small_letters[0])
      word + "way"
    elsif contains_vowels?(word_in_small_letters)
      position_of_vowel = find_vowels_position(word, vowels).first
      word[position_of_vowel..-1] + word[0..(position_of_vowel - 1)] + "ay"
    else
      word
    end

  end

  def to_pig_latin(text)
    phrase = text.split
    phrase.map do |word|
      self.piglatinize(word)
    end.join(" ")
  end

  private

  def contains_vowels?(word)
    !!word.scan(/[aeiou]/)
  end

  def find_vowels_position(word, vowels)
    positions = []
    word.each_char.with_index do |char, index|
      positions << index if vowels.include?(char)
    end
    positions
  end
end
