class PigLatinizer
  
  def piglatinize(phrase)
    phrase.split.collect { |word| piglatinize(words) }.join(" ")
  end
    
      
  def piglatinize(words)
    results = []
    words = words.split(" ")
      words.each do |word|
        if vowel?(word[0])
          results <<"#{word}way"
        else
          index = 0
            until vowel?(word[index])
            index += 1
            end
          word = word[index..-1] + word[0..index-1]
          results << "#{word}ay"
        end
      end
    results.join(" ")
  end
  
  def vowel?(letter)
    "aeouiAEOUI".include?(letter)
  end
  
end