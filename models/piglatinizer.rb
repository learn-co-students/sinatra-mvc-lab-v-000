class PigLatinizer 
  
 def is_vowel(word)
   vowels = 'aeiuoAEIOU'
   vowels.include?(word[0])
   
  end 
  
  
  def piglatinize(word)
  
  if self.is_vowel?(word)
    word.concat('way')
  else 
    word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay')
 end 
  end 
  
  #if the word starts with a vowel add yay to the end
  #if the word starts with consonant(s) add the consonants up to the next vowel and ay to the end

  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize(word)}.join('')
  
 end 
end 