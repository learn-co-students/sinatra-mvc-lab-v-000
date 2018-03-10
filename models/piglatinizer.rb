class PigLatinizer 

  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
      result = "#{word}way"
    else 
      "#{find_word_break(word).last}#{find_word_break(word).first}ay"
    end
  end


  def find_word_break(word)
    i = 0 
    while i < word.length 
      if word[i].match(/[aeiou]/) 
        word_front = word[0...i]
        word_back = word[i..-1]
        break 
      else
        i += 1
      end
    end
    [word_front, word_back]
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map { |word| piglatinize(word) }.join(" ")
  end

end