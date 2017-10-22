class PigLatinizer
  

  def piglatinize(word)
    if !!word.match(/\A[aeiou]/i) 
      word += "way"
    else   
      while !word[0].match(/\A[aeiou]/i) 
        word = word.split("")
        char = word.shift
        word << char        
      end
        word.join("")
    end  
  end

  def to_pig_latin(string)
   new_string = string.split(" ").collect do |word|
    piglatinize(word)
    end
    new_string.join(" ") << "ay"
  end

end  # End of Class
