class PigLatinizer

  def piglatinize(word)
    match(word)
  end

  def to_pig_latin(text)
    word_array = text.split(" ")
    word_array.map do |word|
      match(word)
    end.join(" ")
  end

  def match(word)
    consonants = /^[bcdfghjklmnpqrstvwxyz]{2,}/i
    consonant = /^[bcdfghjklmnpqrstvwxyz]/i
    vowel = /^[aeiou]/i
    if word.match(consonants)
      consonants_convert(word)
    elsif word.match(consonant)
      consonant_convert(word)
    elsif word.match(vowel)
      vowel_convert(word)
    end
  end

  def consonants_convert(word)
    regex = /^[bcdfghjklmnpqrstvwxyz]{2,}/i
    consonants = word.match(regex).to_s
    current = word.gsub(regex, "")
    current + consonants + "ay"
  end

  def consonant_convert(word)
    regex = /^[bcdfghjklmnpqrstvwxyz]/i
    consonant = word.match(regex).to_s
    current = word.gsub(regex, "")
    current + consonant + "ay"
  end

  def vowel_convert(word)
    word + "way"
  end

end