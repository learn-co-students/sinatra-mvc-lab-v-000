require 'pry'

 class PigLatinizer

   def to_pig_latin(word)
    alphabet = ("A".."z").to_a
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    consonants = alphabet - vowels
    unusable = ["i", "a", "an", "in", "on", "and"]
    word.gsub!(/[^a-z0-9\s]/i, '')
    word = word.split("")
    # ["k", "i", "t", "t", "e", "n"]

     if unusable.include?(word.join) || word.size <= 1
      word.join + "way"
    elsif vowels.include?(word[0]) && word.size > 1
      word.join + "way"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word = word.rotate.rotate.rotate << "ay"
      word.join
    elsif consonants.include?(word[0] && word[1])
      word.rotate.rotate.join + "ay"
    else
      word.rotate.join + "ay"
    end

 end

   def piglatinize(words)
    result = words.split(" ").map do |word|
      to_pig_latin(word)
    end
    result.join(" ")
  end

end
