class PigLatinizer
  attr_reader :words
  
  def initialize
  end
  
  def split_words(words)
    words.split(' ')
  end
  
  def piglatinize(words)
    translated = split_words(words).map do |word|
      index = word.index(/[aeiouyAEIOUY]/)
      if index == 0
        word + "way"
      else
        ayversion = word[0..(index-1)] + "ay"
        word.sub(word[0..(index-1)],'') + ayversion
      end
    end
    translated.join(" ")
  end
end