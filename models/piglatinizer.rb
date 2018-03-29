class PigLatinizer

  def piglatinize(phrase)
    if phrase.split(" ") == 1
      piglatinize_word(phrase)
    else
      piglatinize_sentence(phrase)
    end
  end

  def piglatinize_word(word)
    if word.match(/^[^AaEeOoIiUu]{3}/)
      "#{word[3..-1]}#{word[0..2]}ay"
    elsif word.match(/^[^AaEeOoIiUu]{2}/)
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif word.match(/^[^AaEeOoIiUu]/)
      "#{word[1..-1]}#{word[0]}ay"
    else
      "#{word}way"
    end
  end

  def piglatinize_sentence(phrase)
    phrase.split.map {|word| piglatinize_word(word)}.join(" ")
  end
end
