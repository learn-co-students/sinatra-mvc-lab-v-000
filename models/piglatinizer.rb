require 'pry'
class PigLatinizer
  
  attr_reader :words 
  
  @vowels = ['a','e','i','o','u']
  consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  
  def initialize
    
  end
  
  def piglatinize(string) 
    pig_string = []
    i = 0
    words = string.split(/\W+/)
    
    while i < words.length
    
      if words[i][0].match(/b|B|c|C|d|D|f|F|g|G|h|H|j|J|k|K|l|L|m|M|n|N|p|P|q|Q|r|R|s|S|t|T|v|V|w|W|x|X|y|Y|z|Z/)
        word1 = ''
        word2 = ''
        complete_word = ''
        index = 0  
        index2 = 0
        wordCopy = words[i].dup
        
        until words[i][index].match(/a|A|e|E|i|I|o|O|u|U/)
          word2 << words[i][index]
          wordCopy.sub!(wordCopy[0], "")
          index += 1 
        end
        word1 = wordCopy.dup
        
        complete_word = word1 + word2 + "ay"
        complete_word
      elsif words[i][0].match(/a|A|e|E|i|I|o|O|u|U/)
        complete_word = words[i] + "way"
        complete_word
      end
      pig_string << complete_word
      i += 1
    end
    pig_string.join(' ')
  end

end