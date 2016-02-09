class PigLatinizer

  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    if words.split("").count == 1
      words
    elsif words == "an" || words == "in" || words == "and"
      words
    else
      phrase = words.split(/([aeiou]+)/)
      letter = phrase.shift
      phrase << letter + "ay"
      phrase.delete(".")
      phrase.join("")

    end
  end

  def to_pig_latin(words)
    phrase = words.split(" ")
    piggied = phrase.collect {|word| piglatinize(word)}
    piggied.join(" ")
  end
end

