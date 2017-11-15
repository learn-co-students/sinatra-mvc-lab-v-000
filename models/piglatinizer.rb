require 'pry'
class PigLatinizer

  def piglatinize(word)
    if !["a","e","i","o","u"].include?(word[0])
      word.split("")
      for letter in word
        binding.pry
      until ["a","e","i","o","u"].include?(l)
        word << l
        word.slice!(i)
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
