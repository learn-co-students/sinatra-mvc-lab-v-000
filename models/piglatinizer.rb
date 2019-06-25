class PigLatinizer

  def piglatinize(user_text)
      user_text.split(" ").length == 1 ? piglatinize_word(user_text) : piglatinize_phrase(user_text)
  end

  def piglatinize_word(word)
    wordsub = word.match(/^[^aAeEiIoOuU]+/)
    if wordsub.nil?
      new_word = word << "way"
    else
      new_word = word[wordsub.end(0)..-1]
      new_word << wordsub.to_s << "ay"
    end
    new_word
  end

  def piglatinize_phrase(phrase)
    phrase.split.collect { |word| piglatinize_word(word) }.join(" ")
  end


end
