class PigLatinizer
  
  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
      word << 'way'
    else
      index = word.index(/[aeiouAEIOU]/)
      word[index..-1] + word[0..index-1] + 'ay'
    end   
  end

  def to_pig_latin(phrase)
    phrase.split.map{|word| piglatinize(word)}.join(" ")
  end

end