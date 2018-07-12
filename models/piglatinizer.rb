
class PigLatinizer

  def piglatinize(text)
    vowels = ['a', 'e', 'i', 'o', 'u']
    
    if text.include?(' ')
      seperated = text.split(' ')
      
      formatted = seperated.collect do |word| 
        if vowels.include?(text[0])  
          matched = text.match(/^[aeiou]+/i)
          back = matched.post_match
          front = matched[0]
          "#{back}#{front}way"
        else
          matched = text.match(/^[^aeiou]+/i)
          back = matched.post_match
          front = matched[0]
          "#{back}#{front}ay"
        end
      end
      
      formatted.join(' ')
    else
      if vowels.include?(text[0])  
        matched = text.match(/^[aeiou]+/i)
        back = matched.post_match
        front = matched[0]
        "#{back}#{front}way"
      else
        matched = text.match(/^[^aeiou]+/i)
        back = matched.post_match
        front = matched[0]
        "#{back}#{front}ay"
      end
    end

  end
  
end