class PigLatinizer

  def piglatinize(word)
    if word.length > 1 && word != "and" && word != "an" && word != "in"
      i = word.index(/[aeiou]/)
      if i == 0
        "#{word}ay"
      elsif i == 1
        "#{word[1..-1]}#{word[0]}ay"
      elsif i > 1
        first = i - 1
        "#{word[i..-1]}#{word[0..first]}ay"
      end
    else
      word
    end
  end

  def to_pig_latin(words)
    s_words = words.scan(/\w+/)
    s_words.map { |w| piglatinize(w) }.join(" ")
  end
end