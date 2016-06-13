  #def piglatinize(words)
#    first_letter = words[0]
#    vowel_index = words.index(words.scan(/[aeiou]/)[0])
 #   word_count = words.split("").count
#    con_letters = words.scan(/[bcdfghjklmnpqrstvwxyz]/)
#binding.pry

 #   if ["a","e","i","o","u"].include?(first_letter.downcase)
  #    words + "way"
   # else
    # con_letters.each do |x|
     # if words.index(x) < vowel_index
      #  words.index(x) = word_count + 1
    #  end
   # end
    #  end
   # end
 # end  




  #take index of vowel. take index of all consonants. gsub a consonant index if its index is < then that vowels. gsub + 1 of the total count
#con_letters.each do . so look at each consonant and do this. 
#con_letters.each do |x|
 # words.index(x) < words.index(words.scan(/[aeiou]/)[0])
  #words.index(x) = word_count + 1

  #      first_letter = words[0]
 #     vowel_index = words.index(words.scan(/[aeiou]/)[0])
  ##    word_count = words.split("").count
    #  con_letters = words.scan(/[bcdfghjklmnpqrstvwxyz]/)
 #     delete_indexes = []
  #    con_letters.each do |x|
   #     if words.index(x) < vowel_index
    #      delete_indexes << words.index(x)
     #   end
      #  end
 #     delete_indexes.map do |x|
  #      words.delete(words[x])
   #   end


 #   end

#end


#con_letters.each do |x|
 # words.index(x) < words.index(words.scan(/[aeiou]/)[0])
  #words.index(x) = word_count + 1