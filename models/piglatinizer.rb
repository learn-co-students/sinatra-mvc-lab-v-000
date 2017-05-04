require 'pry'
class PigLatinizer
  def to_pig_latin(text)
    text.split.collect do |w|
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(w.downcase[0])
      word = w + "way"
    else
      # deliminate word at first vowel
      deliminate = w.split(/([aeiou]{1})/)
      consonants = deliminate[0]
      rest = deliminate[1..-1]
      word = rest << deliminate[0] << "ay"
      word = word.join
      #binding.pry
    end
    word
  end.join(" ")
  end

  def piglatinize(word)
  #  binding.pry
    to_pig_latin(word)
  end
end

p = PigLatinizer.new
p.piglatinize("pork")
