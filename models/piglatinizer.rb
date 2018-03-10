class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]

    if vowels.include? text[0].downcase
      "#{text}way"
    else
      consonants = ""
      while !vowels.include?(text[0])
        consonants << text[0]
        text = text.split("")[1..-1].join
      end
      text + consonants + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end