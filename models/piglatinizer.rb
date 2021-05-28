
# class PigLatinizer
#     def piglatinize(words)
#       # we are going to create a method that we can use here that will piglatinize an individual word
      
#       # separate the words from the array and create a new array
#        words.split(" ").collect do |word|
#       # use our method piglatinize_word
#         piglatinize_word(word)
#       # join
#        end.join(" ")
#     end

#     def piglatinize_word(word)

#       if word[0].match(/[aeiouAEIOU]/)
#         word + "way"
#       elsif !word[0].match(/[aeiouAEIOU]/) && word[1].match(/[aeiouAEIOU]/)
#         first_letter = word.slice!(0)
#         word + first_letter + "ay"

#       elsif word[2].match(/[aeiouAEIOU]/)
#       first_two_letters = word.slice!(0, 2)
#       word + first_two_letters + "ay"
#       elsif word[3].match(/[aeiouAEIOU]/)
#       first_three_letters = word.slice!(0, 3)
#       word + first_three_letters + "ay"
#     end
#   end
# end


class PigLatinizer
  def piglatinize(words)
    words.split(" ").map do |word|
      consonant = /\A[^AEIOUaeiou]+/.match(word)
      remainder_word = /[AEIOUaeiou]+\w+/.match(word)
      vowel = /\A[AEIOUaeiou]/.match(word)
      whole_word = /\A\w*/.match(word)
      if consonant
       remainder_word[0] << consonant[0] << "ay"  
      elsif vowel
       whole_word[0] << "way"
      end     
    end.join(" ")
  end    
end

# class PigLatinizer
#   def piglatinize(words)
#     words_array = words.split(" ")
#     words_array.each do |word|
#     consonant = /\A[^AEIOUaeiou]+/.match(word)
#     remainder = /[AEIOUaeiou]+\w+/.match(word) 
#     vowel = /\A[AEIOUaeiou]/.match(word)
#     whole_word = /\A\w*/.match(word)
#     if consonant
#       new_word = remainder[0] << consonant[0] << "ay"
#     elsif vowel
#       new_word = whole_word[0] << "way"
#     end
#     end
    
#   end
# end


# class PigLatinizer
#   def piglatinize(words)
    
#     consonant = /\A[^AEIOUaeiou]+/.match(words)
#     remainder = /[AEIOUaeiou]+\w+/.match(words) 
#     vowel = /\A[AEIOUaeiou]/.match(words)
#     whole_word = /\A\w*/.match(words)

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







 #   results_array = []
      
    #   words.split(" ").map do |word|
    #     consonant = /\A[^AEIOUaeiou]+/.match(word)
    #     remainder = /[AEIOUaeiou]+\w+/.match(word)
    #     vowel = /\A[AEIOUaeiou]/.match(word)
    #     whole_word = /\A\w*/.match(word)
    #     if consonant
    #      new_word = remainder[0] << consonant[0] << "ay" 
    #      new_word.join(" ")
    #     #  results_array << new_word
    #     elsif vowel
    #       new_word = whole_word[0] << "way"
    #       results_array << new_word
    #     end     
    #     # results_array << new_word
    #   end
      
    # end    
