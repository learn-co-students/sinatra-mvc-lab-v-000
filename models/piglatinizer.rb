class PigLatinizer
  attr_accessor :text

  def initialize(text = text)
    @text = text
  end

  def piglatinize(word)
    vowel = word.scan(/[aeouiAEIOU]/).to_s

    if vowel.include?(word[0])
      word + "way"
    else
      chars = word.split("")
      new_word = nil
      until vowel.include?(chars[0])
        chars.rotate!
        new_word = chars.join + "ay"
      end
      new_word
    end
  end

  def to_pig_latin(word)
    words = word.split(" ")

    piglatinized_text = []

    words.each do |word|
      piglatinized_text << piglatinize(word)
    end
    piglatinized_text.join(" ")
  end
end
