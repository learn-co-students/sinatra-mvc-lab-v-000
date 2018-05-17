class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def translate
    text.upcase
  end

end
