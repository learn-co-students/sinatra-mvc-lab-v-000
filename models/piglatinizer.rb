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

  def to_pig_latin(words)
    array = words.split(" ")
    piglatin = array.map {|word| piglatinize(word)}
    piglatin.join(" ")
  end
end
