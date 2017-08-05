class PigLatinizer

  def piglatinize(word)
    # word = word.split("")
    vowel_index = word.downcase.index(/[aeoui]/)
    if vowel_index == 0
      return word + 'way'
    end
    word[vowel_index..word.length] + word[0..vowel_index-1] + 'ay'
    # word.push(word.shift).push('ay').join("")
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      self.piglatinize(word)
    end.join(" ")
  end

end
