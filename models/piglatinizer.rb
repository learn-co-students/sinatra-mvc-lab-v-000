class Piglatinizer
  attr_reader :text
  def initialize(text)
    @text = text
  end

  def translate
    words = @text.split(" ")
    words.map do |word|
      first_part = word[1..-1]
      second_part = word[0] + "ay"
      first_part + second_part
    end
  end

  def display_string
    self.translate.join(" ")
  end
end
