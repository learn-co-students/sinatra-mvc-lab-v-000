class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if non_pig_latin_words.include?(word)
      word
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        # removes the first letter if it is a consonant; adds to the consonants variable
        consonants << word[0]
        # removes the consonant, word[0]
        # i.e., word => "ove" , consonants => "l"
        word = word.split("")[1..-1].join
        # repeats until all consonants are gone from beginning of word
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end