class PigLatinizer

    def piglatinize(input_str)
      input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
    end
  
    private
  
    def consonant?(char)
      !char.match(/[aAeEiIoOuU]/)
    end
  
    def piglatinize_word(word)
      # word starts with vowel
      if !consonant?(word[0])
        word = word + "w"
      # word starts with 3 consonants
      elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
        word = word.slice(3..-1) + word.slice(0,3)
      # word starts with 2 consonants
      elsif consonant?(word[0]) && consonant?(word[1])
        word = word.slice(2..-1) + word.slice(0,2)
      # word starts with 1 consonant
      else
        word = word.slice(1..-1) + word.slice(0)
      end
      word << "ay"
    end
  
    def piglatinize_sentence(sentence)
      sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
    end
  
  
  
  
  end

#class PigLatinizer 
#    
#    def piglatinize(input_str)
#        words = input_str.split("")
#        pigged_array = []
#        words.each do |word| #iterate through each of our user inputted words
#            chars = word.split("") #turn each word into an array of characters
#            if ["a","e","i","o","u"].any? {|x| chars[0] == x }
#                chars << "w"
#                chars << "a"
#                chars << "y"
#            else
#                first_vowel = chars.find_index {|x| x=="a" || x=="e" || x=="i" || x=="o" || x=="u" }
#                10.times do #for i in (0..first_vowel) do
#                    temp = chars.shift()
#                    chars << temp
#                end 
#                chars << "a"
#                chars << "y"
#            end 
#            pigged_array << chars.join("")
#        end 
#        pigged_array.join(" ")
#    end 
#
#end 
#