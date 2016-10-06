class PigLatinizer

  def to_pig_latin(text)
   text.split.collect{|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    if /^[aeiou]/i.match(word)
        word + "way"
    else
      single_letter = word.split("")
      until /^[aeiou]/i.match(single_letter[0])
        single_letter.rotate!
      end
      final = single_letter.join + "ay"
    end
  end
end
