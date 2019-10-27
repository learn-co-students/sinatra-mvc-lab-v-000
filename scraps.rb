load 'models/piglatinizer.rb'

["x", "y", "a"]

move_first_consonants(["x", "y", "a"])

 x = PigLatinizer.new("piggy")
 x.move_first_consonants(["x", "y", "a"])

 PigLatinizer.new("piggy").move_first_consonants


 # end
 #
 #
 #
 # if word.start_with?(/[aeiou]/i)
 #   word = word + "way"
 # elsif word.start_with?(/[^aeiou]/i)
 #     # ([^aeiou]{2,})
 #     # (/(ch|sh|sm|st|th|gl|ck|spr|pl)/i)
 #   move_first_consonants(word) + "ay"
 # # else
 # #   move_first_letter_only(word)
#     end
#   end
# end



  # def piglatinize!
  #   word_array = @phrase.split
  #   word_array.collect do |word|
  #     if word.start_with?(/[aeiou]/i)
  #       word = word + "way"
  #     elsif word.start_with?(/[^aeiou]/i)
  #         # ([^aeiou]{2,})
  #         # (/(ch|sh|sm|st|th|gl|ck|spr|pl)/i)
  #       move_first_consonants(word) + "ay"
  #     # else
  #     #   move_first_letter_only(word)
  #     end
  #   end
  # end
  #
  # def move_first_consonants(word)
  #   arr = word.split("")
  #   if arr.first != "a" || "e" || "i" || "o" || "u"
  #     first_letter = arr.shift
  #     arr << first_letter
  #   end
  #   arr.join
  # end
      # rearranged_word = ""
    # if arr.first != "a" || "e" || "i" || "o" || "u"
    #   moved_letter = arr.shift
    #   arr << moved_letter
    #   rearranged_word = arr.join
    #   move_first_consonants()
    # else
    #   word
