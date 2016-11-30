require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize(text=nil)
    @text = text
  end

  def to_pig_latin(text)
    text.split(" ").map do |w|
      piglatinize(w)
    end.join(" ")
  end

  def piglatinize(word)
    if ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"].include? word[0,1]
      pig_latinized_word = "#{word}way"
    else
      parts = word.split(/([aeiou])/)
      start = parts.shift
      finish = parts.join("")
      pig_latinized_word = "#{finish}#{start}ay"
    end
    pig_latinized_word
  end

end
