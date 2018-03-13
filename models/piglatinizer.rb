class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    #handles individual words
    split_text = text.split("")

    if # only one letter or starts with a vowel
      text.length == 1 || text =~ (/\A[AEIOUaeiou]/)
      text + "way"

    elsif # second letter "l" or "r", or first two "sp" or "th"
      split_text[1] == "l" || split_text[1] == "r" || split_text[0] == "t" && split_text[1] == "h"
      split_text << split_text.shift << split_text.shift << "ay"
      split_text.join

    elsif # second and third letters are "p" and "r"
      split_text[1] == "p" && split_text[2] == "r" || split_text[1] == "t" && split_text[2] == "r"
      split_text << split_text.shift << split_text.shift << split_text.shift << "ay"
      split_text.join

    elsif # first and second letters are "wh" or "sk"
      split_text[0] == "w" && split_text[1] == "h" || split_text[0] == "s" && split_text[1] == "k"
      split_text << split_text.shift << split_text.shift << "ay"
      split_text.join

    else
      split_text << split_text.shift + "ay"
      split_text.join
    end
  end

  def to_pig_latin(text)
    # handles sentences
    split_text = text.split
    split_text.collect! do |word|
      piglatinize(word)
    end
    split_text.join(" ")
  end
end
