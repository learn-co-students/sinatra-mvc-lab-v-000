class PigLatinizer

  def piglatinize(word)
    result = ""
    if word.match(/\b[AEIOUaeiou]/)
      result += "#{word}" + "way"
    else
      before = word.slice!(/\b[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]+/)
      result = "#{word}" + "#{before}" + "ay"
    end
    result
  end

  def to_pig_latin(words)
    words.split(" ").collect do |word|
      self.piglatinize(word)
    end.join(" ")
  end

end

# if the word starts with a consonant sound then you take all of the letters before the first vowel and add to the end + "ay"
  # "glove" => "oveglay"
  # "please" => "easeplay"

# if the word starts with a vowel then you add "way" to the end of the word
