class PigLatinizer

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.map do |word|
      if word.length > 1
        word_parts = word.split(/([aeiou].*)/i)
        if word_parts[0] == ""
          word = word_parts[1] + "way"
        else
          word = word_parts[1] + word_parts[0] + "ay"
        end
      else
        word += "way"
      end
    end.join(' ')
  end

  def piglatinize(word)
    vowels = 'aeiou'
    if word.length > 1 && !vowels.include?(word[0].downcase)
      word = word.split(/([aeiou].*)/i)[1] + word.split(/([aeiou].*)/i)[0] + "ay"
    else
      word += "way"
    end
    word
  end
end
