class PigLatinizer
  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    if vowels.include?(word[0])
      new_word = word + "way"
    else
      split = word.split(/([aeiou].*)/, 2)
      new_word = split[1].to_s + split[0].to_s + "ay"
    end
    new_word
  end

  def to_pig_latin(user_phrase)
    words = user_phrase.split(" ")
    sentence = []
    words.map do |word|
      sentence << piglatinize(word)
    end
    sentence.join(" ")
  end

end
