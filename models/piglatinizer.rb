class PigLatinizer

  def piglatinize(word)
    if word[0].match(/[AEIOUaeiou]/)
      word += "way"
    else
      consonants = "#{word.scan(/[^AEIOUaeiou]+/).first}ay"
      latinized_word = word.sub(/[^AEIOUaeiou]+/, "")
      latinized_word += consonants
      latinized_word
    end
  end

  def to_pig_latin(words)
    words.split(' ').collect do |word|
      if word[0].match(/[AEIOUaeiou]/)
        word += "way"
      else
        consonants = "#{word.scan(/[^AEIOUaeiou]+/).first}ay"
        latinized_word = word.sub(/[^AEIOUaeiou]+/, "")
        latinized_word += consonants
        latinized_word
      end
    end.join(' ')
  end
end
