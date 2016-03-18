class PigLatinizer
  
  def initialize


  end

  def piglatinize(word)
     vowels="aeiou"
      
      while !vowels.include?(word.slice(0))
        word  << word.slice!(0)
      end
      if word.length!=1
       word << "ay"
      end

   word
  end

  def to_pig_latin(phrase)
    str=""
    phrase=phrase.chomp(".")
    phrase=phrase.split
    
    phrase.each do |word|
      if word == "and" || word == "an" || word =="in"
          str << word
          str << " "
      else
        str << "#{self.piglatinize(word)}"
         if word != phrase.last
            str << " "
          end
      end
    end
    
    str
  end
end
