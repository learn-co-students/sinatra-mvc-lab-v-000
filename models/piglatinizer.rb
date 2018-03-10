class PigLatinizer




   def piglatinize(word)
     vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
     if vowels.include?(word[0])
       word + "way"
     else
       parts = word.split(/([aeiou].*)/)
      parts.reverse.join('') + 'ay'
    end
  end

  def to_pig_latin(sentence)
   words = sentence.split(" ")
   words.map do |word|
     piglatinize(word)
   end.join(" ")
  end


end
