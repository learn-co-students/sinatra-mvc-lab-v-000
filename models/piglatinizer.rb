
class PigLatinizer
  attr_reader :text

  def piglatinize(phrase)
    vowels = ['a', 'e', 'i', 'o', 'u']
    
    
    seperated = phrase.split(' ')
    
    formatted = seperated.collect do |word| 
      if vowels.include?(phrase[0])  
        matched = phrase.match(/^[aeiou]+/)
        back = matched.post_match
        front = matched[0]
        "#{back}#{front}way"
      else
        matched = phrase.match(/^[^aeiou]+/)
        back = matched.post_match
        front = matched[0]
        "#{back}#{front}ay"
      end
    end
    
    formatted.join(' ')
  end
  
end