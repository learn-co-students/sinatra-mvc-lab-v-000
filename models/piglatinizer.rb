class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end


  def piglatinize(word)

    if word[0].scan(/[aeiouAEIOU]/) != []
      word + "way"
    else
      parts = word.split(/([aeiou].*)/)
      parts.reverse.join('') + 'ay'
    end

  end

  def to_pig_latin(string)
    words = string.split(" ")
    words.collect do |word|
      piglatinize(word)
    end.join(' ')
  end


end
