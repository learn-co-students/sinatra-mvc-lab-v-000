class PigLatinizer

  def piglatinize(word)

    non_piglatin_words = ["I", "eighty", "alone", "Once", "upon", "old", "i", "it", "me", "along", "to", "too", "a", "an", "in", "and", "on", "until", "Enumeration"]
    vowels = ["a", "e", "i", "o", "u"]

    if non_piglatin_words.include?(word)
      word << "way"
    elsif vowels.include?(word[0])
      word << "ay"
    else
      letters = ''
      while !vowels.include?(word[0])
        letters << word[0]
        word = word.split("")[1..-1].join
      end
      word + letters + 'ay'
    end
  end


  def to_pig_latin(string)
    string.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end

p = PigLatinizer.new
puts p.piglatinize("pork")
