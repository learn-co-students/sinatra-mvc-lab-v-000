class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    text = text.split
    text.collect do |word|
      if word[0] == "a" || word[0] == "e" ||  word[0] == "i" || word[0] == "o" || word[0] == "u"
        word << "way"
      else
        parts = word.split(/([aeiou].*)/)
        word = parts[1] + parts[0] + "ay"
      end
    end
    text.join(" ")
  end

end
