class PigLatinizer
   Vowels = %w{a e i o u A E I O U}
   Consonants = %w{b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z}
   EndingVowel = "way"
   EndingConsonant = "ay"

   def piglatinize(phrase)
      to_pig_latin(phrase).join(" ")
      
   end

  def to_pig_latin(phrase)
     phrase.split(' ').map {|word|
        compute(word)
     }
   end

  def compute(word)
      letters = word.split('')
      until Vowels.include?(letters[0]) do 
         letters.rotate!
      end
      if Vowels.include?(word[0])
         letters << EndingVowel
      else
         letters << EndingConsonant
      end
      letters.join('')
   end

end