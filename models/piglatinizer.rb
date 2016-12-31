class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def piglatinize(word)
    first_letter = word.split('').first
    first_vowel = word.scan(/[aeouiAEOUI]/).first

    #if the first letter is a vowel, then add "way" to the end of the word
    if first_letter == first_vowel
      word + "way"

    #otherwise move all of the consonants before the first vowel to the end of the word and add "ay"
    else
      first_consonants = word.split(first_vowel).first
      word.split(first_consonants, 2).last + first_consonants + "ay"
    end
  end

  def to_pig_latin
    text_array = @text.split(" ")

    text_array.collect! do |x|
      piglatinize(x)
    end

    text_array.join(" ")
  end
end