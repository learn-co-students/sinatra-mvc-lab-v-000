class PigLatinizer

  def piglatinize(word)
    non_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ['a','e','i','o','u']

    if vowels.include?(word[0].downcase) || non_words.include?(word.downcase)
      word << "way"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(words)
    words.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end