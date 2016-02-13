class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    return words if !words.match(/[^AEIOUaeiou]/)
    return words if words == "an" || words == "in" || words == "and"
    mix = words.slice!(/^[^AEIOUaeiou]+/)
    mix = "" if !mix
    words + mix + 'ay'
  end

  def to_pig_latin(words)
    new_words = words.split(" ").map do |words|
      piglatinize(words)
    end
    new_words.join(" ")
  end

end
