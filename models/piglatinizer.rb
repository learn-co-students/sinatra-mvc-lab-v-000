class PigLatinizer
  attr_reader :text

  def initialize
  end

  def is_vowel?(letter)
    vowels = "aeiouAEIOU".split("")
    vowels.include?(letter)
  end

  def piglatinize_word(word)
    if is_vowel?(word[0])
      return word + "way"
    else
      word.each_char.with_index do |letter, i|
        if is_vowel?(letter)
          return word[i..-1] + word[0..i - 1] + "ay"
        end
      end
      return word + "ay"
    end
  end

  def piglatinize(text)
    output = []
    words = text.split(" ")
    words.each do |word|
      output << piglatinize_word(word)
    end
    output.join(" ")
  end
end
