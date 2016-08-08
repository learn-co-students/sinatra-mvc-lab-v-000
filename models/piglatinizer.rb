class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def is_vowel?(word)
    vowels = 'aeiou'
    vowels.include?(word[0])
  end

  def translate(word)
    if self.is_vowel?(word)
      word.concat('way')
    else
      word.concat(word.slice!(/^[^aeiou]*/i || "")) + 'ay'
    end
  end

  #if the word starts with a vowel add yay to the end
  #if the word starts with consonant(s) add the consonants up to the next vowel and ay to the end
  def translator
    words = @phrase.split
    new_string = words.map do |word|
      translate(word)
    end
    new_string.join(' ')
  end
end
