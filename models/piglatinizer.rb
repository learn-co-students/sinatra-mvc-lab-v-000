class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    if vowels.include? word[0]
      word << "way"
    else
      consonant = ""
      while !vowels.include?(word[0])
      consonant << word[0]
      word = word.split("")[1..-1].join
      end
    word + consonant + 'ay'    
    end    
  end


  def to_pig_latin(string)
    words = string.split(" ")
      words.collect! do |word|
        piglatinize(word)
    end
    words.join(" ")
  end
end

