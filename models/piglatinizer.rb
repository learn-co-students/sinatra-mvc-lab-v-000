class PigLatinizer
  # Defines a vowel constant array
  VOWELS = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

  # Splits a sentence into individual words and runs each word through the piglatinize(word) method
  def to_pig_latin(sentence)
    sentence.split.collect { |word| piglatinize(word) }.join(" ")
  end

  # Converts individual words into pig latin including those passed in via the to_pig_latin(sentence) method
  def piglatinize(word)
    return "#{word}way" if VOWELS.include?(word[0])
    word = word.split("")

    until VOWELS.include?(word[0])
      letter = word.shift
      word = word << letter
    end

    "#{word.join}ay"
  end

end
