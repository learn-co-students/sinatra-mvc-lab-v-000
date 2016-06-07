class PigLatinizer

  def piglatinize(word)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    
      if  vowels.include?(word[0])
        word + "way"
      else 
        part1 = word.split(/([aeiouAEIOU].*)/)[0]
        part2 = word.split(/([aeiouAEIOU].*)/)[1]
        part2 + part1 + "ay"
      end
    end


  def to_pig_latin(words)
    translation = []
    words.split(" ").each do |word|
      translation << piglatinize(word)
    end
    translation.join(" ")
  end

end

