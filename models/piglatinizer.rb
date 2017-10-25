class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    #binding.pry
    if vowels.include?(word[0].downcase)
      new_word = "#{word}way"
    elsif vowels.include?(word[1])
      suffix = "#{word[0]}ay"
      new_word = suffix.prepend(word)
      new_word[0] = ""
    else
      #binding.pry
      prefix = word.scan(/[^aeiou]*[aeiou]/)[0]
      prefix.slice!(-1)
      new_word = prefix.concat("ay")
      new_word.prepend(word.scan(/[aeiou][^aeiou]*/).join)
    end
    new_word
  end

  def to_pig_latin(sentence)
    newsentence = sentence.split(" ").collect do |word|
      self.piglatinize(word)
    end
    newsentence.join(" ").strip
  end
end

#latin = PigLatinizer.new
