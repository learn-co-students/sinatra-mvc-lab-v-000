class PigLatinizer

  def piglatinize(word)
    vowels = ['a','e','i','o','u','A','E','I','O','U']

    if vowels.include?(word[0])
      final_word = "#{word}way"
    else
        cons = ""
      while !vowels.include?(word[0])
        cons << word[0]
        word = "#{word.slice(1,word.length-1)}"
      end
      final_word = "#{word}#{cons}ay"
    end
    final_word
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end

end
