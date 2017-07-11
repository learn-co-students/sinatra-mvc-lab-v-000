require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'

class PigLatinizer
  def piglatinize(word)
      cluster = ''
      vowels = %w[a e i o u]#to write an array of strings separated by spaces instead of commas and without quotes around them
    if vowels.include?(word[0].downcase)
      word + 'ay'
    else
      word.chars.each do |char| #chars=str.each_char.to_a
        if vowels.include?(char)
          binding.pry
          return word[cluster.length..-1] + cluster + "way"#cluster. length?
          #binding.pry
        else
          cluster = cluster + char
        end
      end
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map {|word| piglatinize(word)}.join(" ")
  end
end
#http://www.zenspider.com/ruby/quickref.html
