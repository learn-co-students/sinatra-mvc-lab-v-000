# require 'pry'
class PigLatinizer

  attr_reader :user_phrase

  def consonant?(letter)
    letter.match(/[BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz]/)
  end

  def piglatinize(word)
    # binding.pry
    if !consonant?(word[0])
      pig_word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2]) && consonant?(word[3])
      pig_word = word[4..-1] + word[0..3]
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      pig_word = word[3..-1] + word[0..2]
    elsif consonant?(word[0]) && consonant?(word[1])
      pig_word = word[2..-1] + word[0..1]
    else consonant?(word[0])
      pig_word = word[1..-1] + word[0]
    end
    pig_word + "ay"
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end
