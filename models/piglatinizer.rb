require 'pry'

class PigLatinizer

  attr_reader :text

  #def initialize(text = nil)
#binding.pry
  #  @text = text

#  end



  def vowel?(word)
    word = word.split("")
     word.detect do |let|
      let.downcase == "a" || let.downcase == "e" || let.downcase == "i" || let.downcase == "o" || let.downcase == "u"
    end
  end



def piglatinize(sent)
  sent_array = sent.split(" ")
  sent_array.collect do |word|
  let = word.split("")
  if vowel?(let[0]) && let[0] == "e" &&  let[2] == "n"
    w2 = let.join("")
    w2 + "way"
  elsif
    vowel?(let[0])
    w2 = let.join("")
    w2 + "way"
  elsif
    let.size > 1
  while !vowel?(let[0])
    let << let.shift
  end
    w2 = let.join("")
    w2 + "ay"
  else
    w2 = let.join("")
    w2 + "way"
end
end.join(" ")
end




end
