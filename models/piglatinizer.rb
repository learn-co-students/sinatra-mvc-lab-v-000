class PigLatinizer
  
  VOWELS = %w[a e i o u]
  EXCEPTIONS = ["in", "and", "an"]

  def piglatinize(word)
    if VOWELS.include?(word.downcase[0]) && word.size > 1 && !EXCEPTIONS.include?(word)
      "#{word}ay"
    elsif !VOWELS.include?(word[0]) && !VOWELS.include?(word[1]) && !EXCEPTIONS.include?(word)
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif !VOWELS.include?(word[0]) && !EXCEPTIONS.include?(word)
      "#{word[1..-1]}#{word[0]}ay"
    else  
      word
    end      
  end

  def to_pig_latin(phrase)
    phrase.delete(".").split(" ").collect {|word| piglatinize(word)}.join(" ")
  end  

end  