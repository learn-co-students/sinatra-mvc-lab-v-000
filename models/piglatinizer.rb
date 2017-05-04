class PigLatinizer

  def piglatinize(word)
    if !word[0].downcase.scan(/[aeiou]/).empty?
      "#{word}way"
    else
      beginning_consonants = word.split(/[aeiou]/).first
      "#{word[beginning_consonants.length..-1]}#{beginning_consonants}ay"
      # "#{word[1..-1]}#{word[0]}ay"
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ").map do |word|
      piglatinize(word)
    end
    words.join(" ")
  end

end
