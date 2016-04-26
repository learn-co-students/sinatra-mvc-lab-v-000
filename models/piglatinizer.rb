class PigLatinizer

  VOWELS = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

  def piglatinize(word)
    arr = word.split("")
    if VOWELS.include?(arr[0])
      new_word = word << "way"
    elsif !VOWELS.include?(arr[0]) && !VOWELS.include?(arr[1]) && !VOWELS.include?(arr[2])
      arr2 = arr.shift(3)
      new_word = arr.join + arr2.join + "ay"
    elsif !VOWELS.include?(arr[0]) && !VOWELS.include?(arr[1]) && VOWELS.include?(arr[2])
      arr2 = arr.shift(2)
      new_word = arr.join + arr2.join + "ay"
    elsif !VOWELS.include?(arr[0]) && VOWELS.include?(arr[1])
      a = arr.shift
      new_word = arr.join + a + "ay"
    end
    new_word
  end

  def to_pig_latin(sentence)
    arr = sentence.split(" ")
    new_sentence = arr.collect do |word|
        self.piglatinize(word)
    end.join(" ")
    new_sentence
  end
end