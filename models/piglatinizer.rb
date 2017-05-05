require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    if text[0].match(/[^aeiouAEIOU]/) && text.size > 1
      while text[0].match(/[^aeiouAEIOU]/)
        first_consonant = text.slice!(0)
        text = text + first_consonant
      end
      text + "ay"
    else
      text + "way"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect!{|word| self.piglatinize(word)}.join(" ")
  end
end
