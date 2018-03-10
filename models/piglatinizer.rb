class PigLatinizer

  @@vowels = ['a', 'e', 'i', 'o','u']

  def piglatinize(word)

    if @@vowels.include?(word[0].downcase)
      lat_word = word + "way"
    else
      word_pieces = word.split(/([aeiou].*)/)
      lat_word = word_pieces[1] + word_pieces[0] + "ay"
    end

    lat_word
  end

  def to_pig_latin(sentence)
    words = sentence.split
    lat_arr = words.map { |word| piglatinize(word) }
    lat_arr.join(" ")
  end
end
