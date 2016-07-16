class PigLatinizer
  attr_accessor :words

  
  

  def piglatinize(word)
    
    letters = ('a'..'z').to_a
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    consonants = letters - vowels
    
    if vowels.include?(word[0])
       word + "way"
    else
      while !vowels.include?(word[0])
      consonants.include?(word[0]) 
      word = word.split("")[1..-1].join + word[0]
      
     end
     word  + 'ay'
  end
end
 
 def to_pig_latin(word)
    word.split.collect{|word| piglatinize(word)}.join(" ")

end
end

