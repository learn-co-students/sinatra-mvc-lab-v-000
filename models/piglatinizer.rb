require 'pry'
class PigLatinizer

  def piglatinize(word)
    if word.length > 1
      word << word[0]
      word.slice!(0)
      word << "ay"
    else
      word << "way"
    end
  end

  def to_pig_latin
    @string.each do |word|
      word.each do |letter|
        word.delete(letter[0])
        word << "ay"
      end
    end
  end
end
