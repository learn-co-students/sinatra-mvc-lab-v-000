require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def split_phrase
    words = self.text.split(" ")
  end

  def piglatinize
    array = split_phrase
    words_array = []
      array.map do |word|
        if word.match(/\A[aeiouAEIOU][a-zA-Z]*/)
          @pl = word + 'way'
        elsif word.match(/\A[^aeiouAEIOU][a-zA-Z]*/)
          arr = word.chars
          el = arr.shift
          @pl = arr.push(el).join("") + 'ay'
        elsif word.match(/\A[^aeiouAEIOU]{2}[a-zA-Z]*/)
          arr = word.chars
          a = arr.slice(0,2).join("")
          b = arr.slice(2..-1).join("")
          @pl =  b + a + 'ay'
        elsif word.match(/\A[^aeiouAEIOU]{3}[a-zA-Z]*/)
          arr = word.chars
          a = arr.slice(0,3).join("")
          b = arr.slice(3..-1).join("")
          @pl =  b + a + 'ay'
        end
        words_array << @pl
        words_array.join(" ")
        end
      end
    end
