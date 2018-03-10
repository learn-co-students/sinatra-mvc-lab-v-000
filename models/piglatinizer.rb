class PigLatinizer

  def piglatinize(text)
    if text.split(" ").count > 1
      to_pig_latin(text)
    else
      if text.match /\b[aeouiAEIOU][a-z]*\b/
        return "#{text}way"
      else
        vowel_split = text.split /([aeiou].*)/
        return "#{vowel_split[1]}#{vowel_split[0]}ay"
      end
    end
  end

  def to_pig_latin(text)
    analyzed_phrase = []
    text.split(" ").each {|word|
      analyzed_word = self.piglatinize(word)
      analyzed_phrase << analyzed_word
    }
    analyzed_phrase.join(" ")
  end

end
