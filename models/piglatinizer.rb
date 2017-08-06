require 'pry'

class PigLatinizer

  def piglatinize(word)
    if word[0].downcase.match(/[aeiou]/)
      word << "way"
    else
      consonant = word.split(/([aeiou].*)/)[0]
      rest = word.split(/([aeiou].*)/)[1]
      rest + consonant + "ay"
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
