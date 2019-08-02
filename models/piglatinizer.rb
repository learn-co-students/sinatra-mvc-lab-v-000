class PigLatinizer

  def piglatinize(text)
    t = text.split("")
    if t[0].match(/[^aeiouAEIOU]/)
      while t[0].match(/[^aeiou]/)
        t.rotate!
      end
      t.join + "ay"
    else
      t.join + "way"
    end
  end

  def to_pig_latin(words)
    words_arr = words.split
    words_arr.collect! do |word|
      self.piglatinize(word)
    end
    words_arr.join(" ")
  end

end
