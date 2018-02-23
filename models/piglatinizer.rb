class PigLatinizer

  def piglatinize(word)
    vowel_idx = word =~ (/[aeiou]/i)
    if vowel_idx == 0
      word += "way"
    else
      word[vowel_idx..-1] + word[0..vowel_idx-1] + "ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.map{|w| piglatinize(w) }.join(" ")
  end

end
