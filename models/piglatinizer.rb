require 'pry'

class PigLatinizer
  
  def piglatinize(word)
      pl = word.split('')
      until pl[0].match(/[aeiouAEIOU]/)
        pl = pl.insert(-1, pl.delete_at(0))
      end
      
      new_word = pl.join
      
      if word.split('')[0].match(/[aeiouAEIOU]/)
        new_word << "way"
      else
        new_word << "ay"
      end
  end
  
  
end