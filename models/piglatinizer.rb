require 'pry'
class PigLatinizer
  attr_reader :text

  def initialize
  end



  def word_split
    @pig = @pig.map do |word|
      word.split(//)
    end
  end

  def vowel(arr)
    if arr[0] =~ /[aeiouAEIOU]/
      arr << "w"
      #arr.join
    end
    arr
  end

  def cons(arr)
    #binding.pry
    while  arr[0] =~ /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/ do
      arr << arr[0]
      arr.shift
    end
    arr << "ay"
    arr.join
  end

  def sentence_split(text)
    @pig = text.split
  end
  #piglatinize method

  def piglatinize(text)
    sentence_split(text)
    word_split

    @pig = @pig.map do |word|
        #binding.pry
          word = vowel(word)
          cons(word)
        end
        @pig.flatten.join(' ')

      #flatten
      #join
  end
  def to_pig_latin(text)
    piglatinize(text)
  end

end
