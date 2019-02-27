require 'pry'

class PigLatinizer
  
  def piglatinize(word)
      new_word = word.split('')
      pl_word = new_word.insert(-1,new_word.delete_at(0))
      pl_word.join

    if pl_word.end_with?("a","e","i","o","u","A","E","I","O","U")
      pl_word << "way"
    else
      pl_word << "ay"
    end
    
  end
  
  
end