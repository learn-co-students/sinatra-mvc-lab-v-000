require 'pry'

class PigLatinizer

  
  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]
    word = word.gsub(".","") 

    if non_pig_latin_words.include?(word)
      word
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(str)
 
    separate = str.split(" ")

    separate.collect do |w|
      # binding.pry
      piglatinize(w)
    end.join(' ')
  end 
end 

# PigLatinizer.new.piglatinize("Once")




# new_word.gsub(/\,/,"")
