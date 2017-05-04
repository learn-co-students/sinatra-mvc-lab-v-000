class PigLatinizer

  def piglatinize(word)
    if /\A[aeiouAEIOU]/.match(word)
      word + "way"
    else
      word.gsub(/\A[^aeiouAEIOU]+/,"") + /\A[^aeiou]+/.match(word)[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    piglatinized = phrase.split(/\s+/).map do |word|
      piglatinize(word)
    end
    piglatinized.join(" ")
  end
  
end