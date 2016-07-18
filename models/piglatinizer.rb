class PigLatinizer
  
  def piglatinize(text)
    if text[0].match(/\A[^aeiouAEIOU]+/)
      consonant_beginning = text.match(/\A[^aeiouAEIOU]+/).to_s
      how_many_consonants = consonant_beginning.length
      text << consonant_beginning + "ay"
      text[how_many_consonants..-1]
    else
      text << "way" 
    end
        
  end

  def to_pig_latin(text)
    
    words = text.split(" ").collect do |word|
      piglatinize(word)
    end

    words.join(" ")

  end



end