
require 'pry'


class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def piglatinize(word)
    letters = []
    if word.start_with?('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
      word << "way"
    elsif cons = word.index(/[aeiou]/)
      wrd_ary = word.split('')
      wrd_ary.each_with_index do |leder, i|
        if i < cons
          letters << leder
          wrd_ary.delete_at(i)
        else nil
        end
      end     
      wrd_ary << letters
      wrd_ary = wrd_ary.join('')
      wrd_ary = wrd_ary + "ay"
      wrd_ary
    end
  end
end




