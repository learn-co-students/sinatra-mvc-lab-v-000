class PigLatinizer
  def piglatinize(word)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    if vowels.include?(word[0].downcase)
      word+'way'
    else
      word = word.gsub("qu", " ")
      word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
      word.gsub(" ", "qu")
    end
  end

  def to_pig_latin(sen)
    sen.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
