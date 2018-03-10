
class PigLatinizer

  attr_accessor :user_input

  def initialize
    @user_input = user_input
  end

  def split_string
    @user_input.split(" ")
  end

  def to_pig_latin(string)
    array = string.split(" ").map do |word|
      piglatinize(word)
    end
    array.join(" ")
  end

  def piglatinize(word)
    if word.match(/\A[aeiouAEIOU]/)
      word + "way"
    else
      consonants = word.slice!(/^[^aeiou]*/)
      word + consonants + "ay"
    end
  end
end
