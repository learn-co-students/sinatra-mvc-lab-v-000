require 'pry'

class PigLatinizer
  
  def piglatinize(word)
    arr = word.split(' ')
   
      # binding.pry
    latin = arr.each do |w|
      pl = w.split('')
      until pl[0].match(/[aeiouAEIOU]/)
         pl = pl.insert(-1, pl.delete_at(0))
      end
        
      new_word = pl.join
        
      if w.split('')[0].match(/[aeiouAEIOU]/)
        new_word << "way"
      else
        new_word << "ay"
      end
    end
    latin
  end
  
  
end