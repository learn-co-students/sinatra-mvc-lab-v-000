class PigLatinizer

  VOWELS = %w[a e i o u].freeze

  def piglatinize(word)
    l_word = word.downcase
    return "#{word}way" if VOWELS.include?(l_word[0])
    i = l_word.index(/[aeiou]/)
    "#{word[i..-1]}#{word[0..i - 1]}ay"
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end
