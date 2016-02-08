require 'pry'
class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    if words.split("").count == 1
      words
    elsif words == "an" || words == "in"
      words
    elsif words == "and"
      words
    else
      arr = words.split(/([aeiou]+)/)
      letter = arr.shift
      arr << letter + "ay"
      arr.delete(".")
      arr.join("")

    end
  end

  def to_pig_latin(words)
    arr = words.split(" ")
    pig_words = arr.map do |word|
      piglatinize(word)
    end
    pig_words.join(" ")
  end
end