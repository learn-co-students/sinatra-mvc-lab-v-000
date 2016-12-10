class PigLatinizer

  def piglatinize(word)
   word_partition = word.partition(/[aeiouAEIOU]/)
   if word_partition[0] == ""
     word + "way"
    else
     word_partition[1] + word_partition[2] + word_partition[0] + "ay"
    end
  end

  def to_pig_latin(words)
    words_array = words.split(" ")
    piglatinized_words_array = []
    words_array.each do |word|
      piglatinized_words_array << piglatinize(word)
    end
    piglatinized_words_array.join(" ")
  end

end
