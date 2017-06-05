class PigLatinizer

  def to_pig_latin (sentence)
    sentence.split.collect{ |word| piglatinize(word)}.join(" ")
  end

  def piglatinize (text)
    consonant_chain = text[/^[^aeiouAEIOU]+/]
    if consonant_chain
      text = text[consonant_chain.size..-1] << consonant_chain << "ay"
    else
      text << "way"
    end
    text
  end

end
