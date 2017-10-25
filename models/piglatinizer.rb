class PigLatinizer
  attr_accessor :text

  def initialize(text=nil)
    @text = text
  end

  def determine(text = @text)
    x = text.split(" ")
    if x.length == 1
      self.piglatinize
    else
      self.to_pig_latin
    end
  end

  def piglatinize(text = @text)
    x = text.split(/([aeiou].*)/)
    y = "#{x[1]}#{x[0]}ay"
    y
  end

  def to_pig_latin(text = @text)
    x = text.split(" ")
    z = x.collect do |word|
      y = word.split(/([aeiou].*)/)
    "#{y[1]}#{y[0]}ay"
    end
    z.join(" ")
  end
end
