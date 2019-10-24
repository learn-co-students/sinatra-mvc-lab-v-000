require 'pry'

class PigLatinizer
  
  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end
  
  def to_pig_latin(word)
    if self.is_vowel?(word)
      word.concat('way')
    else
      word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
     end
   end
   
   def piglatinize(phrase)
     phrase.split.collect {|word| to_pig_latin(word)}.join(' ')
   end
   
end