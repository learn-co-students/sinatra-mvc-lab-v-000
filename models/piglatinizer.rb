require 'pry'

class PigLatinizer
  attr_accessor :text

  def piglatinize(word)
    if word.length == 1
      word += 'way'
    else
      if ("aeiouAEIOU").include?(word[0])
        word += 'way'
      else
        string = ""
        while !("aeiou").include?(word[0])
          string << word[0]
          word = word.split("")
          word.delete_at(0)
          word = word.join("")
        end
        word + string + 'ay'
      end
    end
  end

  def to_pig_latin(string)
    string = string.split(" ")
    array = string.map do |word|
      piglatinize(word)
    end
    array.join(" ")
  end

end
