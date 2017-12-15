require 'pry'

class PigLatinizer

  def piglatinize(word)
    if !vowel?(word[0]) && vowel?(word[1])
      # no vowel / vowel
      word = word.chars
      word << word[0]
      word.delete_at(0)
      word.join + "ay"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && vowel?(word[2])
      # no vowel / no vowel / vowel
      word = word.chars
      word << word[0]
      word << word[1]
      word.delete_at(0)
      word.delete_at(0)
      word.join + "ay"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2]) && vowel?(word[3])
      # no vowel / no vowel / no vowel / vowel
      word = word.chars
      word << word[0]
      word << word[1]
      word << word[2]
      word.delete_at(0)
      word.delete_at(0)
      word.delete_at(0)
      word.join + "ay"
    else
      word + "way"
    end
  end

  def vowel?(letter)
    letter.match(/[aeiouAEIOU]/)
  end

  def to_pig_latin(scentence)
    scentence.split(" ").collect! do |word|
      word = piglatinize(word)
    end.join(" ")
  end
end
