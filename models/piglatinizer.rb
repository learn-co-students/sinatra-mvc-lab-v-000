class PigLatinizer
  
  def piglatinize(word)
    translated = word.split('')
  
    beg = word.scan(/\b[b-df-hj-np-tv-z]{1,}/i)

    if beg.first
      beg.first.size.times {translated.shift} 
      translated.push(beg.first + "ay")
    else 
      translated.push("way")
    end
    
    translated.join('')
    
  end
  
  def to_pig_latin(words)
    words.split(' ').collect { |word| piglatinize(word) }.join(' ')
  end
  
end