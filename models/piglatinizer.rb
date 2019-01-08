class PigLatinizer
  def piglatinize(string)
    string.include?(" ") ? piglatinize_sentence(string) : piglatinize_word(string)
  end

  def piglatinize_word(word)
    if word.scan(/\A[^aeiouAEIOU]+/).size != 0
      consonants = word.scan(/\A[^aeiouAEIOU]+/)
      letters = consonants.first
      size = letters.length

      "#{word[size..-1]}#{letters}ay"
    else
      "#{word}way"
    end
  end

  def piglatinize_sentence(sentence)
    sentence.split(" ").collect do |word|
      piglatinize_word(word)
    end.join(" ")
  end
end
