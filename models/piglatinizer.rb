require 'pry'

class PigLatinizer


   def piglatinize(input)
     input.split(" ").length == 1 ? piglatin_word(input) : piglatin_sentence(input)
     #bindind.pry
   end

   def consonant?(letters)
     !letters.match(/aAeEiIoOuU/)
     #binding.pry
     #make a new method to distiguish vowels from consonants 
   end


   def piglatin_word(word)

    case consonant?(word)

      when consonant?(word[0]) && !consonant?(word[1])
         word = word.slice(1..-1) + word.slice(0,1)

      when consonant?(word[0]) && consonant?(word[1]) && !consonant?(word[2])
        word = word.slice(2..-1) + word.slice(0,2)

      when consonant?(word[0]) && consonant?(word[1]) && consonant(word[2]) && !consonant?(word[3])
        word = word.slice(3..-1) + word.slice(0,3)

      when !consonant?(word[0]) || !consonant?(word[0]).upcase == true
         word = word + "w"

      end

     word << "ay"
   end

   def piglatin_sentence(sentence)
     sentence.split.collect {|words| piglatin_word(words)}.join(" ")
   end

   #binding.pry

end
