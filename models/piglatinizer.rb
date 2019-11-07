class PigLatinizer

  def piglatinize(word)
  arr = word.split("")
  size = word.size
  vowels = ["a", "e", "i", "o", "u"]
  pairs = ["ch","sh","sm","st","th","gl","pl"]
    if vowels.include?(word[0].downcase)
      word + "way"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
