require 'pry'

class PigLatinizer

  def piglatinize(word)
    if word[0].downcase.match(/[aeiou]/)
      word << "way"
    else
      word[1..-1] + word[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
