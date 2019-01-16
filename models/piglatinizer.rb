class PigLatinizer

  def piglatinize(string)
    string.split(" ").length == 1 ? piglatinize_word(string) : piglatinize_sentence(string)
  end

  private

  def vowel?(char)
    char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if vowel?(word[0])
      word = word + "w"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0..2)
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word = word.slice(2..-1) + word.slice(0..1)
    elsif !vowel?(word[0])
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(words)
    words.split.collect { |word| piglatinize_word(word) }.join(" ")
  end

end
