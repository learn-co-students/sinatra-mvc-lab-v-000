class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    text = text.split
    if text.length > 1
      to_pig_latin(text)
    else
      text = text.map do |word|
        if word.downcase[0] == "a" || word.downcase[0] == "e" ||  word.downcase[0] == "i" || word.downcase[0] == "o" || word.downcase[0] == "u"
          word << "way"
        else
          parts = word.split(/([aeiou].*)/)
          word = parts[1] + parts[0] + "ay"
        end
      end
      text.join(" ")
    end
  end

  def to_pig_latin(text)
    if text.is_a?(Array) == false
      text = text.split
    end
    text = text.map do |word|
      if word.downcase[0] == "a" || word.downcase[0] == "e" ||  word.downcase[0] == "i" || word.downcase[0] == "o" || word.downcase[0] == "u"
        word << "way"
      else
        parts = word.split(/([aeiou].*)/)
        word = parts[1] + parts[0] + "ay"
      end
    end
    text.join(" ")
  end

end
