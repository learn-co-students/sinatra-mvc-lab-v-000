require 'pry'
class PigLatinizer
  attr_accessor :text

    def initialize
    #@text = text.downcase.split /([aeiou].*)/
  end

def sentence_splitter(text)
  array = []
  word_array = text.split
  #if word_array.count > 1
    word_array.map do |word|
      array << piglatinize(word)
   end
    sentence = array.join(" ")
  end


  def piglatinize(text)
    if text.split(' ').count > 1
    sentence_splitter(text)
  else
  array = text.split(%r{\s*})
    if array.first == "a" || array.first == "e" || array.first == "i" || array.first == "o" || array.first == "u" || array.first == "A" || array.first == "E" || array.first == "I" || array.first == "O" || array.first == "U"
      array << "way"
      array.join
    else
        text = text.split /([aeiou].*)/
    text = text.rotate(1)
    text << "ay"
    final_word = text.join
    final_word
end
end
end



end
