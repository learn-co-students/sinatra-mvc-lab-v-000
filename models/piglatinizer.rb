require 'pry'

class PigLatinizer
  attr_accessor :word

  def piglatinize(word)
    if "aeiou".include?(word[0].downcase)
      word = word + 'way'
    else
      word_array = word.split("")
      first_consonant = word_array.find_index {|x| "aeiou".include?(x)}
      izing = word_array.shift(first_consonant)
      ized = word_array.push(izing).join + "ay"
    end
  end

  def to_pig_latin(string)
    string.split(" ").collect do |w|
      piglatinize(w)
    end.join(" ")
  end
end
