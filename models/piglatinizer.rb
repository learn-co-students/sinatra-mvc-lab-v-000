require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    x = text.scan(/\w/)
    vowels = ["a", "e", "i", "o", "u"]
    first = []
    if !vowels.include?(x[0].downcase)
      x.each do |letter|
        break if vowels.include?(letter)
        first << letter
      end

      x.shift(first.length)
      x << first
      x << "ay"
      pig = x.join("")
    elsif vowels.include?(x[0].downcase)
      x << "way"
      pig = x.join("")
    end
    pig
  end

  def to_pig_latin(sentence)
    piggit = sentence.split(" ")
    pigging = piggit.collect do |word|
      piglatinize(word)
    end
    pigged = pigging.join(" ")
  end

end
