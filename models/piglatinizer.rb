#require 'pry'
class PigLatinizer
  
  def piglatinize(word) 
    #not_piglatinizable = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    after_vowel = []
    
    if vowels.include?(word[0])
      word + "way"
    else
      until vowels.include?(word[0])
        after_vowel << word[0]
        word[0] = ""
      end
      word.split('')
      word = word + after_vowel.join("")
      word + "ay"
    end
  end
  
  def to_pig_latin(sentence)
    array = sentence.split(" ").map do |w|
      piglatinize(w)
    end
    array.join(" ")
  end
  
  
end