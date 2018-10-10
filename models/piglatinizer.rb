require 'pry'
class PigLatinizer
  
  def piglatinize_word(words)
    
    vowels = ["a", "e", "i", "o", "u"]
    three_blend= ["thr", "sch", "squ", "spr", "str"]
    two_blend = ["ch", "sh", "qu", "th", "br", "pl", "pr", "sk", "wh"]
       if vowels.include? words.downcase[0]
           v = words << 'way'
           v
      elsif three_blend.include? words.downcase[0..2]
              first_three = words.slice!(0,3)
              three = words << first_three << 'ay'
              three
       elsif  two_blend.include? words.downcase[0] + words[1]
              first_two = words.slice!(0,2)
              words << first_two << 'ay'
       else    
          first_letter = words.slice!(0)
          new_word = words << first_letter << 'ay'
          new_word
        end 
      end 
        
    def piglatinize(sentence)
      sentence.split.map {|word| piglatinize_word(word)}.join(" ")
    end

  
end