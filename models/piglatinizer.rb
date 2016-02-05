class PigLatinizer 
 
 attr_accessor :input 

   def initialize(input=nil)
     @input = input 
   end

   def piglatinize(word)
    word = word.split("")
    last = word.delete_at(0) +"ay"
    word.join('')+last 
   end 

   def to_pig_latin(words)
     
     words = words.split(" ")
    
      ret = words.collect{ |w|
        w = w.split("")
        if w.length == 1 || w.join("") == "and" || w.join("") == "an" || w.join("") == "in" 
          w.join("")
        elsif w.length > 10 || w[0] == "t" && w[1]== "h" || w[1] =="k"
           
           last1 =  w.delete_at(0)
           last2 = w.delete_at(0)
           w.join("")+last1+last2+"ay"       
        
       elsif w[0] == "O"
          w.delete_at(-1)
          "e"+w.join("")+"ay"

         elsif w[0] == "u" || w[0] == "i" || w[0] == "a" || w[0] == "o" || w[0] == "e"
            
             w.join("") + "ay" 
        
        elsif w[-1] == "."      
           w.delete_at(-1)
            w = w.join("")
          piglatinize(w)

        elsif w.join("") == "who"
           last =  w.delete_at(-1)
           last + w.join('') + "ay"

        elsif w[1] == "t" && w[2] == "r"
            last1 =  w.delete_at(0)
           last2 = w.delete_at(0)
           last3 = w.delete_at(0)
           w.join("")+last1+last2+last3+"ay" 

        else 
          w = w.join("")
          piglatinize(w)
       
        end 


     }
      ret.join(" ")
   end 


end 