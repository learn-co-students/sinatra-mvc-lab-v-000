class PigLatinizer

  def piglatinize(word)
    str = word.downcase
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    conson = alpha - vowels

    if vowels.include?(str[0])
      word + "way"
    elsif conson.include?(str[0]) && conson.include?(str[1]) && conson.include?(str[2])
      word[3..-1] + word[0..2] + "ay"
    elsif conson.include?(str[0]) && conson.include?(str[1])
      word[2..-1] + word[0..1] + "ay"
    elsif conson.include?(str[0])
      word[1..-1] + word[0] + "ay"
    else
      word
    end

  end

  def to_pig_latin(phrase)
    phrase.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
