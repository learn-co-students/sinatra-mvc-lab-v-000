class PigLatinizer
  attr_reader :text

  @@vowels = ["a", "e", "i", "o", "u"]
  @@invalid_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on", "until"]

  def piglatinize(word)
    if @@invalid_words.include?(word.downcase)
      word << 'way'
    else
      if @@vowels.include?(word[0].downcase)
        word << 'way'
      else
        split_array = word.split /([aeiou].*)/
        consonants = split_array[0].to_s
        base_word = split_array[1].to_s
        updated_word = base_word << consonants + 'ay'
      end
    end

  end

  def to_pig_latin(sentence)
    sentence.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
