class PigLatinizer
  
  def piglatinize(word)
    starts_with_vowel = word =~/\A[aeiouAEIOU]/
      
    if starts_with_vowel
      "#{word}way"
    else
      parts = word.split(/([aeiou].*)/)
      parts << parts.shift
      parts << "ay"
      parts.join
    end
  end
  
  def to_pig_latin(words)
    real_words = words.split(' ')
    pig_latin_words = real_words.map do |word|
      piglatinize(word)
    end
    
    pig_latin_words.join(' ')
  end
  
end