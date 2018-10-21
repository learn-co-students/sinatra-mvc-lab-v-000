require 'pry'

class PigLatinizer
  attr_accessor :words  
  
  def initialize
    @words = words
  end
  
  def consonant_cluster(text)
    if text[2].match(/[aeiouAEIOU]/)
      two_elems = text.slice!(0, 2)
      text + two_elems + "ay"
    else
      three_elems = text.slice!(0, 3)
      text + three_elems + "ay"
    end
  end
  
  def consonant(text)
    first_elem = text.slice!(0)
    text + first_elem + "ay"
  end
  
  def vowel(text)
    text + "way"
  end

  def piglatinize(text)
    piglatinized = []
    words = text.chomp.split(' ')
    words.each do |word|
      if word[0].match(/[aeiouAEIOU]/)
        piglatinized << vowel(word)
      elsif word[1].match(/[aeiouAEIOU]/)
        piglatinized << consonant(word)
      else word[0].match(/[aeiouAEIOU]/) && !word[1].match(/[aeiouAEIOU]/)
        piglatinized << consonant_cluster(word)
      # binding.pry
      end
    end
    piglatinized.join(" ")
  end
  
end