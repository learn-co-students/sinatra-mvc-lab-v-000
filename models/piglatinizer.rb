require 'pry'
class PigLatinizer
  attr_accessor  :words

  def initialize(words = nil)
    @words = words
  end

  def piglatinize(foo = nil)
    if @words != nil
      arr = @words.split
    else arr = foo.split
    end

    if arr.length == 1
      if !arr[0].slice(0).scan(/[aeiouAEIOU]/).empty?
        arr[0] << "way"
        arr[0]
      else
        arr2 = arr[0].scan(/\w/)
        arr2.insert(-1, arr2.shift) until !arr2[0].scan(/[aeiouAEIOU]/).empty?
        arr2 << "ay"
        arr2.join
      end
    elsif arr.length > 1
      latin_array = []
      arr.each do |word|
        if !word.slice(0).scan(/[aeiouAEIOU]/).empty?
          word << "way"
          latin_array << word
        elsif word.slice(0).scan(/[aeiouAEIOU]/).empty?
          word2 = word.scan(/\w/)
          word2.insert(-1, word2.shift) until !word2[0].scan(/[aeiouAEIOU]/).empty?
          word2 << "ay"
          latin_array << word2.join
        end
      end
      latin_array = latin_array.reject { |w| w.slice(0).scan(/[aeiouAEIOU]/).empty? }
      latin_array.join(' ')
    end
  end
end
