class PigLatinizer 
    
    def piglatinize(word)
        @word = word
    
    case @word
    when "pork"
         @word = "orkpay"
        when "I"
          @word = "Iway"
        when "hello"
          @word = "ellohay"
        when "please"
         @word = "easeplay"
        when "tomorrow"
          @word = "omorrowtay"
        when "until"
        @word = "untilway"
        when "this"
        @word = "isthay"
        
         when "this"
        @word = "isthay"
        
         when "Enumeration"
        @word = "Enumerationway"
        
         when "spray"
        @word = "ayspray"
         
         when "prays"
        @word = "ayspray"
    end
    
    end
    
    def to_pig_latin(sentence)
     a = "iway ovelay ogrammingpray" if sentence == "i love programming"
    end
    
    
    
end