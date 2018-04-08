require 'pry'

class PigLatinizer
  def initialize
  end

  def piglatinize(text)
    words = text.split(" ")
    arr = []
    words.each do |word|
      parts = word.split(/([AEIOUaeiou].*)/).reject{|w| w.empty?}
      if parts.length == 1
        arr << "#{parts[0]}way"
      else
        arr << "#{parts[1]}#{parts[0]}ay"
      end
    end
    arr.join(" ")
  end


end
