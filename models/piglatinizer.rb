class PigLatinizer
  

  def piglatinize(word)
    if !!word.match(/\A[aeiou]/i) 
      word += "way"
    else   
      new_word = []
      word.each_char do |char|
        !char.downcase.match(/[aeiou]/) ?  new_word.push(char) : new_word.unshift(char)
      end
      new_word.join("") << "ay"

     end 
  end

  def sentence_to_pl(string)
   new_string = string.split(" ").collect do |word|
    piglatinize(word)
    end
    new_string.join(" ")
  end

end  # End of Class
