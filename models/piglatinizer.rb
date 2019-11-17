require 'pry'
class PigLatinizer 
  def piglatinize(text)
    words = text.split(" ")
    if(words.length == 1)
      return latinize(words.first)
    end 
    
    return words.map do |word|
      latinize(word)
    end.join(" ")
  end 
  
  def latinize(word)
    idx = word.index(/[aeiouAEIOU]/)
    f = word[0..idx-1]
    rest = word[idx..word.length] if word.length > 1
    
    idx == 0 ? "#{ f }way" : "#{ rest }#{ f }ay"
  end
  
   
end 