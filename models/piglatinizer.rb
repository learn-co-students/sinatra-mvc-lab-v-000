class PigLatinizer
  attr_reader :words
  
  def initialize
    @words = "Hello"
  end
  
  def split_words
    @words.split(' ')
  end
  
  def piglatinize
    split_words.map do |word|
      index = word.index(/[aeiouAEIOU]/)
      if index == 0
        word + "way"
      else
        ayversion = word[0..(index-1)] + "ay"
        words.sub(word[0..(index-1)],'') + ayversion
      end
    end
  end
  binding.pry
end