require 'pry'
class PigLatinizer
    
    def piglatinize(word)
        letters = word.split('')
        
        if word.scan(/^spr/) != []
            3.times {
                letter = letters.shift()
                letters.push(letter)
                }
                
                letters.push("ay")
                letters.join()
        
        elsif word.scan(/^[AaEeIiOoUu]/) != []
            word + "way" 
            
        elsif word.scan(/^ch|sh|sm|st|th|pl|sp|pr|wh|sk/) != []
            first_letter = letters.shift()
            second_letter = letters.shift()
            letters.push(first_letter+second_letter+"ay").join()
            
        else
            first_letter = letters.shift()
            letters.push(first_letter+"ay").join()
        end
        
    end
    
    
    def to_pig_latin(phrase)
       words = phrase.split(' ')
       pig_latin = words.collect {|word| piglatinize(word)}
       pig_latin.join(' ')
    end
    
    
end