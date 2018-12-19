class PigLatinizer
  
  attr_accessor :text 
  
  def initialize(text)
    @text = text
  end
  
  def latinize
    sentence = @text.split(" ")
    
    sentence.each do |word|
      if word[0].match(/[aeiou]/) == true 
        new_word = word + "ay"
      else 
        first_letter = word.slice(0)
        word_end = word.split(0, 1)
        new_word = word_end + first_letter + "ay"
        binding.pry 
      end
    end
  end
  
  
  
end