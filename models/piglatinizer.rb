class PigLatinizer
  attr_reader :text

  def initialize

  end

  def split
    @text.split(" ").collect do |word|
      if word.start_with?('a','e','i','o','u','A','E','I','O','U')
        "#{word}way"
      else
        word.split("")
        "#{word[1..-1]}#{word[0]}ay"
      end
    end
  end

  def piglatinize(phrase)
    @text=phrase
    self.split.join(" ")
  end

  def to_pig_latin(phrase)
    @text=phrase
    self.split.join(" ")
  end



end
