require 'pry'

class PigLatinizer
  
  def piglatinize(word)
      pl = word.split('')
      until pl[0].match(/[aeiouAEIOU]/)
          pl = pl.insert(-1, pl.delete_at(0))
        end
      
      new_word = pl.join
      
      if new_word.end_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
        new_word << "way"
      else
        new_word << "ay"
      end
  end
  
  
end