class PigLatinizer

  def piglatinize(word)
    vowel = %w(a A e E i I o O u U)

    if vowel.include?(word[0])
      word + "way"
    else
      vowel_index = word.index(/[aeiouAEIOU]/)
      word[vowel_index..-1] + word[0..(vowel_index-1)] + "ay"
    end
  end

  def to_pig_latin(sentence)
    words = []
    sentence.split(" ").each do |word|
      words << piglatinize(word)
    end
    words.join(" ")
  end
end
