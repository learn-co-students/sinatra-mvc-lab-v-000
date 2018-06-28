require 'pry'

class PigLatinizer
  attr_accessor :phrase

  def initialize

  end

  def piglatinize(string)
    word_array=string.split(" ") #! Will this put a single word as the only element in an array?
    latin_array=word_array.collect {|word| pigword(word)}
    latin_array.join(" ")
  end

  def pigword(word)
    fvpos=word.index(/[aeiou]/i)

    if fvpos==0
      res="#{word}way"
    else
      res="#{word[fvpos..-1]}#{word[0..(fvpos-1)]}ay"
    end

    res
  end
end
