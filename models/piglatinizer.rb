require 'pry'
class PigLatinizer

  def piglatinize(word)
    if !["a","e","i","o","u"].include?(word[0])
      until ["a","e","i","o","u"].include?(l)
        word.split("").each_with_index do |l, i|
          word << l
          word.slice!(i)
        end
      end
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
