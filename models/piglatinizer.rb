class PigLatinizer

  def piglatinize(word)
    if vowel?(word[0])
      word << "way"
    else
      while(!vowel?(word[0]))
        word = rotate(word)
      end
      word << "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end

  def vowel?(char)
    char.downcase.start_with?('a', 'e', 'i', 'o', 'u')
  end

  def rotate(word)
    word << word[0]
    word[0] = ""
    word
  end

end
