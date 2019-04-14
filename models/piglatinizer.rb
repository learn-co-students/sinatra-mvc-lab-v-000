class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    extra_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]

    if extra_words.include?(word.downcase)
      word << 'way'
    elsif vowels.include?(word[0].downcase)
      word << 'way'
    else
      cons = ""
      while !vowels.include?(word[0])
        cons << word[0]
        word = word.split("")[1..-1].join
      end
      word + cons + 'ay'
    end
  end

  def to_pig_latin(input)
    input.split.collect{|word| piglatinize(word)}.join(" ")
  end


end