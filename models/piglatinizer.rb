require "pry"

class PigLatinizer

  attr_accessor :words

  def piglatinize(word)
    # binding.pry
    if word[0].downcase.match(/[aeiou]/)
      word + "way"
    else
      letters = word.split("")
      first_vowel_location = letters.index {|letter| letter.match(/[aeiou]/)}
      letters.rotate(first_vowel_location).join + "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| self.piglatinize(word)}.join(" ")
  end

end
