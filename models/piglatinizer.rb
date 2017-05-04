class PigLatinizer
    
    def piglatinize(text)
        first_letters = text.scan(/^[bcdfghjklmnpqrstvwxyz]*/i).first
        
        # if text =~ /\A(?=[^aeiou])(?=[a-z])/i
        #     translated_text = "#{text.split(/^first_letters/).last}#{first_letters}ay"
        # else
        #     translated_text = "#{text}way"
        # end
        if text =~ /^[aeiou]/i
            translated_text = "#{text}way"
        else
            translated_text = "#{text.split(/^#{first_letters}/).last}#{first_letters}ay"
        end
        translated_text
    end
    
    def to_pig_latin(sentence)
        sentence.split(" ").map {|word| piglatinize(word)}.join(" ")
    end

end