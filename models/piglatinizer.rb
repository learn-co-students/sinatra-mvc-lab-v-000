class PigLatinizer

  attr_accessor :words

  def initialize
    @words = []
  end

  def to_pig_latin(text)
    @words = text.split(" ")
    @words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

  def piglatinize(word)
    if !%w(a e i o u A E I O U).include?(word[0])
      i = 0
      constanant_cluster_array = []
      while !%w(a e i o u A E I O U).include?(word[i]) && i < word.length
        constanant_cluster_array << word[i]
        i += 1
      end
      new_word = word[i..word.length-1]
      new_word << constanant_cluster_array.join("")
      new_word << "ay"
    else
      word << "way"
    end
  end

end
