class PigLatinizer
  attr_accessor :text

  def text
    @text.to_s
  end

  def piglatinize(text)
    if text.length == 1 || text == "and" || text == "an" || text == "in"
      text
    elsif /[aeiouAEIOU]/.match(text.split("")[0])
      text + "ay"
    else
      vowel = /[aeiou]/.match(text)[0]
      vowel_i = text.split("").index(vowel)
      beginning = text[vowel_i, text.length]
      consonants = "#{text[0..(vowel_i - 1)]}" + "ay"
      "#{beginning}" + "#{consonants}"
    end
  end

  def to_pig_latin(text)
    word_array = []
    text.split(" ").each do |word|
      word_array << self.piglatinize(word)
    end
    word_array.join(" ").gsub(".","")
  end

end