# https://en.wikipedia.org/wiki/Pig_Latin#Rules
# https://github.com/BrennanFulmer/sinatra-integrating-models-walkthrough-v-000

class PigLatinizer
  attr_reader :text
  
  def initialize(text)
    @text = text
  end
  
  def pig_latinize
    vowels = ['a', 'e', 'i', 'o', 'u']
    
    # grab consonants
      ^[^aeiou]+
    
    # starts with vowel
      ^[aeiou]+
    

  end
  
end