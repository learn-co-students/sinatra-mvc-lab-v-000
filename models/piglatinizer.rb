require 'pry'

class PigLatinizer
  
  def initialize
    
    
  end
  
  def piglatinize(word) #converts word to piglatin
    vowel_index = word.index(/[aAeEiIoOuU]/)
    start = word.split("").shift(vowel_index)
    rest = word.split("")[vowel_index..word.length-1]
    if vowel_index == 0 
      append = "way"
    else
      append = "ay"
    end
    piglatinized = (rest + start).join("") + append
  end
  
  
  def to_pig_latin(phrase) #converts phrase to piglatin
    phrase.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end
  
end