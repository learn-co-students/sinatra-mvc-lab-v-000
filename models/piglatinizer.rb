require 'pry'

class PigLatinizer

  attr_accessor :text
  
  def piglatinize(word)
    testword = word.downcase
    if testword[0] == "a" || testword[0] == "e" || testword[0] == "i" || testword[0] == "o" || testword[0] == "u"
      answer = "#{word}way"
    else
      parts = word.split(/([aeiou].*)/)
      answer = "#{parts[1]}#{parts[0]}ay"
    end
    answer
  end

  def to_pig_latin(words)
    separate = words.split
    result = separate.collect do |w|
               piglatinize(w)
             end
    result.join(" ")
  end
end