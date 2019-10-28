class PigLatinizer

  def piglatinize(word)
    vowels = %w(a e i o u A E I O U)

    if vowels.include? word[0]
      word << "way"
    elsif !vowels.include?(word[1]) && !vowels.include?(word[2])
      keep = word[0..2]
      word.split("")[3..-1].join << keep << "ay"
    elsif !vowels.include? word[1]
      keep = word[0..1]
      word.split("")[2..-1].join << keep << "ay"
    else
      keep = word[0]
      word.split("")[1..-1].join << keep << "ay"
    end
  end

  def to_pig_latin(user_phrase)
    user_phrase.split.collect { |w| piglatinize(w) }.join(" ")
  end
end
