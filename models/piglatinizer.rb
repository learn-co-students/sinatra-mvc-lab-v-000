class PigLatinizer

  def piglatinize(word)

        
    vowels = ['a','e','i','o','u','A','E','I','O','U'].to_a
    consonants = ((('a'..'z').to_a) << ('A'..'Z').to_a).flatten - vowels
    exclude = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]

    if word.size == 1 || exclude.include?(word)
      word
    elsif vowels.include?(word[0])
      "#{word}ay"
    else
      word = word.split(//)
      while consonants.include?(word[0])
        word = word << word.shift
      end

      word.join + 'ay'
    end

  #  elsif consonants.include?(word[0])
   #    word = word.split(//)
    #  if consonants.include?(word[1])
     #   word = word << word.shift
      #end

      #if consonants.include?(word[1]) && consonants.include?(word[2])
      #  word = word << word.shift
      #end
    
      #word = (word << word.shift).join + 'ay'
    #end

  end

  def to_pig_latin(phrase)
    array = phrase.gsub(".","").split(" ")
    array.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end