class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def piglatinize
    words = @text.split(" ")
    words.each do |word|
      word << "#{word.chars.first}ay"
      word.slice!(0)
    end
    words.joing(" ")
  end
end
