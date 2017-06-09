class PigLatinizer
  attr_accessor :text

  def initialize
    @text
  end

  def piglatinize(word)
    parts = word.split(/([aeiouAEIOU].*)/)
    if parts.length == 1
      new_word = word+"way"
    elsif parts[0] == ""
      new_word = parts[1]+"way"
    else
      new_word = parts[1]+parts[0]+"ay"
    end
    new_word
  end


  def to_pig_latin(text)
    pl = text.split
    translated = []
    pl.each do |word|
      translated << self.piglatinize(word)
    end
    @text = translated.join(" ")
  end


end
