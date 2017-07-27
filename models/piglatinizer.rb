class PigLatinizer
  def piglatinize(word)
    vowels = ["a","e","i","o","u"]
    if vowels.include?(word[0].downcase)
      word << "way"
    else
      split_at_consonant = word.split(/[aeiou]+\w*/).join
      scan_for_vowels = word.scan(/[aeiou]+\w*/).join << split_at_consonant << "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split.map {|w| piglatinize(w)}.join(" ")
  end
end
