class PigLatinizer

  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
      word + "way"
    else
      sections = word.split(/([aeiou].*)/)
      sections[1] + sections[0] + 'ay'
    end
  end

  def to_pig_latin(phrase)
    phrase.split.map{|word| piglatinize(word)}.join(" ")
  end

end