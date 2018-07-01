class PigLatinizer

  def piglatinize(user_input)
     text_array = user_input.split(" ")
     text_array.collect do |word|
       word_index = word.index("#{word.scan(/[aeiouAEIOU]/).first}")
       middle = word.slice(0,word_index)
       beginning = word.slice(word_index,word.length)
       word_index == 0?  beginning << "#{middle}way" : beginning << "#{middle}ay"
     end.join(" ")
   end

end
