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
        consonants << word[0]
        word = word[1..-1]
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(phrase)
    phrase.split.collect{|word| piglatinize(word)}.join(" ").gsub(".", "")
  end

end