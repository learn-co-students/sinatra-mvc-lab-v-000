class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def to_pig_latin(text)
    text = text.split(" ").map do |word|
      word = piglatinize(word)
    end
    text.join(" ")
  end

  def piglatinize(word)
    if !word[0].downcase.match(/[aeiou]/).nil?
      word = word.concat('w')
    else
      until !word[0].downcase.match(/[aeiou]/).nil?
        word = word.split("").rotate.join("")
      end
    end
    word.concat('ay')
  end

end
