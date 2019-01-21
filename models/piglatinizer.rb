class PigLatinizer 
  
  def piglatinize(word)
    
    consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z","H","G","S"]
    vowels = ["a","e","i","o","u"]
    
    if word == word.split(" ")[0]
      if consonants.include?(word[0]) && vowels.include?(word[1])
        first = word[0] 
        remaining = word.reverse.chop.reverse
        new = remaining + first + "ay"
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && vowels.include?(word[2])
        first = word[0] + word[1]
        remaining = word.reverse.chop.chop.reverse
        new = remaining + first + "ay"
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]) && vowels.include?(word[3])
        first = word[0] + word[1] + word[2]
        remaining = word.reverse.chop.chop.chop.reverse
        new = remaining + first + "ay" 
      else
        new = word + "way"
      end
        new
    else 
      words = word.split(" ")
      new = words.collect do |word|
        word = piglatinize(word)
      end 
      
      
      new.join(" ")
    end 
  end 
  
end