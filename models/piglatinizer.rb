require 'pry'

class PigLatinizer
  attr_accessor :text


  def piglatinize(word)
    array = word.split('')
    if array.first.downcase.match(/[aeiou]/)
      word += "way"
    else
    word = word.split(/([aeiou].*)/)
    word[2] = word[0]
    word.shift
    word = word.join
    word += "ay"
    end
    word
  end

  def to_pig_latin(phrase)
    phrase.split.collect do |word|
      self.piglatinize(word)
    end.join(" ")
  end
#binding.pry


end

#puts "#{PigLatinizer.new("hello how").create}"
