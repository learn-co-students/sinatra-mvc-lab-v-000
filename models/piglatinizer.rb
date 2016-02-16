class PigLatinizer

  def piglatinize(word)
    #convert words to pig latin
    #The rules for Pig Latin are:
    #- If the word starts with a consonant, it moves this consonant
    #    to the end of the word and adds "ay". E.g., translates "book" to 
    #    "ook-bay".
    # - If the word starts with a vowel, it simply add "ay" to the
    #    end of the word. E.g., translates "apple" to "apple-hay"

    word = word.gsub('.', '')
    non_piglatin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]  
    vowles = ["a", "e", "i", "o", "u"]

    if non_piglatin_words.include?(word)
      word
    elsif vowles.include?(word[0])
      word << "ay"
    else 
      consonants = ""
      while !vowles.include?(word[0])
        consonants << word[0]
       word = word[1..-1]
     end
      word + consonants + "ay"

    end
  end




  def to_pig_latin(text)
    #uses piglatinize_word to convert entire sentance 
      text.split.collect {|word| piglatinize(word) }.join(" ")
      
  end



end