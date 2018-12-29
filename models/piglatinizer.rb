#require 'pry'
class PigLatinizer
  
  def piglatinize(word) 
    not_piglatinizable = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]
    
    if vowels
    

  end
  
  def to_pig_latin(sentence)
    array = sentence.split(" ").map do |w|
      piglatinize(w)
    end
    array.join(" ")
  end
  
  
end