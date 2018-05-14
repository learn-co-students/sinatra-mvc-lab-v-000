class PigLatinizer 

  
def piglatinize(string)
   a = string.split(' ')
   a.map! do |string|
     if string[0].scan(/[aeiouAEIOU]/) == [] # doesn't start with vowel?
       if string[1].scan(/[aeiouAEIOU]/) == [] #starts with constenant cluters?
         if string[2].scan(/[aeiouAEIOU]/) == []
           c = string[0..2]
           string.slice!(c)
           string = string + c + "ay"
         else
           c = string[0..1]
           string.slice!(c)
           string = string + c + "ay"
         end
       else
         c = string[0]
         string.slice!(c)
         string = string + c + "ay"
       end
     else
       string = string + "way"
     end
     string
   end
   a.join(" ")
 end
  
end 