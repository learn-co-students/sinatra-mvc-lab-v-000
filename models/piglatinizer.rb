require 'pry'

class PigLatinizer

  def initialize
  end

  def to_pig_latin(user_phrase)
    
    piglatin_array = user_phrase.split(" ").collect do |word|
      self.piglatinize(word)
    end

    piglatin_array.join(" ")
  end

  def piglatinize(word)

    if ["a","e","i","o","u"].include?(word.downcase.split(//)[0])
        piglatin_word = word << "way"
        compact_word = piglatin_word.gsub(" ","")
        compact_word
    else
      letter_array = word.split(//)
      until ["a","e","i","o","u"].include?(letter_array.first) 
        first_letter = letter_array.shift  
        letter_array << first_letter
      end
      
      letter_array << "ay"
      letter_array.join
    end
  end

end