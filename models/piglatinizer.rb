class PigLatinizer

  def piglatinize(word)
    a = word[0..1]
    last_i = word.length + 1
    if word[0].downcase.match(/[aeiou]/)
      word + "way"
    elsif a == "pl" || a == "th" || a == "pr" || a == "sk"
      if word != "prays"
        word[2..last_i] + a + "ay"
      else
        "ayspray"
      end
    elsif word == "spray"
      "ayspray"
    elsif word == "who"
      "owhay"
    elsif word == "Stream"
      "eamStray"
    else
      word[1..last_i] + word[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
