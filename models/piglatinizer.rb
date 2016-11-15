class PigLatinizer

  def split_phrase(phrase)
    new_phrase = phrase.split(" ")
    new_phrase
  end

  def to_pig_latin(phrase)
    phrasing = split_phrase(phrase)
    latinized = []
    phrasing.each do |word|
      latinized << piglatinize(word)
    end
    latinized.join(" ")
  end

  def piglatinize(word)
    first_split = word.split(/([aeiouAEIOU].*)/)[0]
    second_split = word.split(/([aeiouAEIOU].*)/)[1]
    if first_split == ""
      second_split + "way"
    else
      second_split + first_split + "ay"
    end
  end
end
