class PigLatinizer



  def piglatinize(input)
    new_string = ""
    input = input.split
    input.each do |word|
      # binding.pry
      new_word = word.split(/([aeiouAEIOU].*)/)
      if new_word[0] == ""
        new_word[0] = "way"
        new_word[0], new_word[1] = new_word[1], new_word[0]
      else
        new_word[0] = "#{new_word[0]}ay"
        new_word[0], new_word[1] = new_word[1], new_word[0]
      end
      if input.count == 1
        new_string << new_word.join
      else
        new_string << "#{new_word.join} "
      end
    end
    new_string.strip
  end




end
