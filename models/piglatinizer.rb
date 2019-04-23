class PigLatinizer 
  
  
  def piglatinize(text)
    @all = []
    text.split(" ").each do |word| 
      if word.split("")[0].match(/[^aeiouAEIOU]/) && word.split("")[1].match(/[aeiouAEIOU]/)
        new_word = word.split("").rotate.push("a","y").join
        @all << new_word
      elsif  word.split("")[0].match(/[^aeiouAEIOU]/) && word.split("")[1].match(/[^aeiouAEIOU]/) && word.split("")[2].match(/[aeiouAEIOU]/)
        new_word = word.split("").rotate(2).push("a","y").join
        @all << new_word
      elsif word.split("")[0].match(/[^aeiouAEIOU]/) && word.split("")[1].match(/[^aeiouAEIOU]/) && word.split("")[2].match(/[^aeiouAEIOU]/)
        new_word = word.split("").rotate(3).push("a","y").join
        @all << new_word
      else 
         new_word = word.split("").push("w","a","y").join
         @all << new_word
      end
     end
    all_piglatinized
  end
   
  def all_piglatinized
    @all.join(" ")
  end
end 