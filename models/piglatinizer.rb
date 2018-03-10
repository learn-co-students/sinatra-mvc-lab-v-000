class PigLatinizer
  def piglatinize(word)
    if word.length > 1
      if word[0].match(/[aeiouAEIOU]/)
        word + "way"
      else
        split = word.index(/[aeiou]/)
        word[split..-1] + word[0..split-1] + "ay"
      end
    else
      word + "way"
    end
  end

  def to_pig_latin(phrase)
    split = phrase.split(" ")
    output = split.map do |word|
      piglatinize(word)
    end
    output.join(" ")
  end
end
