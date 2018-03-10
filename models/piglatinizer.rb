class PigLatinizer

  @@vowels = ['a', 'e', 'i', 'o','u']

  def piglatinize(word)

    if @@vowels.include?(word[0].downcase)
      latin_word = word + "way"
    else
      word_pieces = word.split(/([aeiou].*)/)
      latin_word = word_pieces[1] + word_pieces[0] + "ay"
    end

    latin_word
  end

  def to_pig_latin(sentence)
    words = sentence.split
    latin_array = words.map { |word| piglatinize(word) }
    latin_array.join(" ")
  end
end