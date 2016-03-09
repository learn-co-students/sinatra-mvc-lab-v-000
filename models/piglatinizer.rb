class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def to_pig_latin(text)
    text = text.split(" ").map do |word|
      word = piglatinize(word)
    end
    return text.join(" ")
  end

  def piglatinize(word)
    #if a word starts with a vowel, add 'w'
    if !word[0].match(/[aeiouAEIOU]/).nil?
      word = word.concat('w')
    else
      #rotate word until it starts with a vowel
      until !word[0].match(/[aeiouAEIOU]/).nil?
        word = word.split("").rotate.join("")
      end
    end
    #add 'ay'
    return word.concat('ay')
  end
end
