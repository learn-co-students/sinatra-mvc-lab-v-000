
class PigLatinizer
    def piglatinize(word)

      consonant = /\A[^AEIOUaeiou]+/.match(word)
      remainder = /[AEIOUaeiou]+\w+/.match(word) 
      vowel = /\A[AEIOUaeiou]/.match(word)
      whole_word = /\A\w*/.match(word)
  
      if consonant
        new_word = remainder[0] << consonant[0] << "ay"
      elsif vowel
        new_word = whole_word[0] << "way"
      end  
    end
    
    def splits(sentence)
      sentence.piglatinize(word)
    end
end




# class PigLatinizer
#   def piglatinize(word)
    
#     consonant = /\A[^AEIOUaeiou]+/.match(word)
#     remainder = /[AEIOUaeiou]+\w+/.match(word) 
#     vowel = /\A[AEIOUaeiou]/.match(word)
#     whole_word = /\A\w*/.match(word)

#     if consonant
#       new_word = remainder[0] << consonant[0] << "ay"
#     elsif vowel
#       new_word = whole_word[0] << "way"
#     end
#   end
# end


# consonant = word.match(/(\A[^AEIOUaeiou])/).captures
# consonant[0]
# remainder = word.match(/([AEIOUaeiou]+\w+)/)
# remainder[0]
# consonant = /(\A[^AEIOUaeiou])/.match(word)
# remainder = /([AEIOUaeiou]+\w+)/.match(word)