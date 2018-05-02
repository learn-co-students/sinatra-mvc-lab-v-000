require 'pry'
class PigLatinizer

  def piglatinize(text)
    phrase = text.split(" ")
    transform = []
    
    phrase.each do |w|

      latin = w.split /([aeiouAEIOU].*)/
      joy = latin - [""]
      if joy.length > 1
        transform << (joy[1] + joy[0] + "ay")
      else
        transform << (joy[0] + "way")
      end
      
    end
    pig = transform.join(" ")
    pig
  end
  
end