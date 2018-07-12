
class PigLatinizer
  attr_reader :text
  
  def initialize(text = '')
    @text = text.strip.downcase
  end
  
  def piglatinize
    vowels = ['a', 'e', 'i', 'o', 'u']
    
    if @text.length < 2
      return @text += 'ay'
    elsif vowels.include?(@text[0])  
      matched = @text.match(/^[aeiou]+/)
    else
      matched = @text.match(/^[^aeiou]+/)
    end
    
    back = matched.post_match
    front = matched[0]
    "#{back}#{front}ay"
  end
  
end