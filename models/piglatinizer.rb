class PigLatinizer

  def piglatinize(word)
    if word.match(/^[aeiouAEIOU]/) #the word starts with a vowel
      word = word + "way"
    else #the word starts with a consonant
      split = word.split(/([aeiouAEIOU].*)/)
      # split[0] => the consonants at the beginning of the word
      # split[1] => the rest of the word
      re_order = [split[1], split[0], "ay"]
      re_order.join("")
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    pig_latinized_words = words.collect { |word| piglatinize(word) }
    pig_latinized_words.join(" ")
  end

end
