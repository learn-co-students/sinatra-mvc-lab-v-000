class PigLatinizer
  def vowel?(letter)
    letter.downcase.scan(/[aeiou]/).count > 0
  end

  def piglatinize(word)
    #For words that begin with vowel sounds,
    #add "way" to the end of word
    if vowel?(word[0])
      word << "way"

    #Else, all letters before the initial vowel are placed at the end of the word
    #Then, "ay" is added to the end of word
    else
      while(!vowel?(word[0]))
        word << word[0]
        word[0]= ""
        word
      end
      word << "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect{|word|
      piglatinize(word)
    }.join(" ")
  end

end
