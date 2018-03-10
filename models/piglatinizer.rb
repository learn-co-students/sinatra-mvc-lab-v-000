class PigLatinizer
  attr_accessor :text

  def initialize
    @text
  end

  def piglatinize(word)
    if word.match(/\b[aeiou]\w*/i)
      word + "way"
    else
      letters = word.scan(/([^aeiou]+)([aeiou]+\w*)/i).flatten
      piglatin = letters[1] + letters[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    pig_phrase = words.map do |word|
      piglatinize(word)
    end
    pig_phrase.join(" ")
  end

end
